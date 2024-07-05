# [Ruby String Calculator](https://blog.incubyte.co/blog/tdd-assessment/)

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- ruby "3.2.1"

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/salvimohan/tdd_assestment_incu.git

   ```

2. Navigate to the project directory:

   ```bash
   cd tdd_assestment_incu
   ```

3. Install dependencies:

   ```bash
   bundle install
   ```

4. Start the Ruby interactive shell (irb):

   ```bash
   irb
   ```

5. Require the StringCalculator class:

   ```bash
   require_relative 'lib/string_calculator'
   ```

6. Use the StringCalculator.add method with the expected parameter:

   ```bash
   StringCalculator.add("//;\n1;2") # Should return '3' as output
   ```

### Running Tests

To run the tests for this project, use the following command:
   
   ```bash
   rspec
   ```