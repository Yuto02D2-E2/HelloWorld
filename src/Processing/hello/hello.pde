void setup() {
    size(300, 300);
    background(255);
		String message = "hello world with processing";
		hello(message);
}

void hello(String message) {
    println(message);
    textAlign(CENTER);
    textSize(30);
    text(message, width / 2, height / 2);
}

