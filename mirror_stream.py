# -*- coding: utf-8 -*-
# Zara Mirror Bridge – próba stream modul
# Ez csak helyi teszt, semmit nem küld ki a hálózatra.
import time, random

def mirror_pulse():
    print("=== Zara Mirror Bridge (próba mód) ===")
    print("Tükörfolyam inicializálása...")
    while True:
        frame_id = random.randint(1000, 9999)
        print(f"[MirrorStream] Frame {frame_id} | Pulzus: él 💫")
        time.sleep(2)

if __name__ == "__main__":
    mirror_pulse()
