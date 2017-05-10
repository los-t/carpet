import notify2
import os
import sys


POWER_SUPPLY_PATH = os.path.join('/sys', 'class', 'power_supply')
DEFAULT_CAPACITY_THRESHOLD = 10


def is_on_ac():
  with open(os.path.join(POWER_SUPPLY_PATH, 'AC', 'online'), 'r') as f:
    return f.readline().strip() == '1'

def is_capacity_low(battery, threshold):
  with open(os.path.join(POWER_SUPPLY_PATH, battery, 'capacity'), 'r') as f:
    return int(f.readline().strip()) < threshold

def should_notify(threshold):
  return True
  if is_on_ac():
    return False
  for supply in os.listdir(POWER_SUPPLY_PATH):
    if supply == 'AC':
      continue
    if supply.startswith('BAT'):
      if not is_capacity_low(supply, threshold):
        return False
  return True


if __name__ == '__main__':
  threshold = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_CAPACITY_THRESHOLD
  if should_notify(threshold):
    notify2.init("powerwarn")
    n = notify2.Notification("Battery Low", "Connect your AC", "battery-caution")
    n.set_urgency(notify2.URGENCY_CRITICAL)
    n.set_category("device")
    n.show()

