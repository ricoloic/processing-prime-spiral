
void setup() {

  int top = 1_000_000;

  ArrayList<Integer> primes = new ArrayList<>();

  primes.add(2);

  for (int i = 3; i <= top; i += 2) {
    boolean notPrime = false;
    for (int p : primes) {
      if (i % p == 0) {
        notPrime = true;
        break;
      }
    }
    if (notPrime) continue;
    primes.add(i);
  }

  size(800, 800);
  background(33);
  colorMode(HSB);
  strokeWeight(1000);
  translate(width / 2, height / 2);
  scale(0.001);
  for (int i = 0; i < primes.size(); i++) {
    int p = primes.get(i);
    stroke(p % 255, 220, 255);
    float a = radians(p);
    float x = cos(a) * p;
    float y = sin(a) * p;
    point(x, y);
  }
}
