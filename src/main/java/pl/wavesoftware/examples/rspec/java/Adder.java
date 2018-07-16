package pl.wavesoftware.examples.rspec.java;

import java.util.logging.Logger;

import static java.lang.String.format;

/**
 * @author <a href="mailto:krzysztof.suszynski@wavesoftware.pl">Krzysztof Suszynski</a>
 * @since 2018-07-17
 */
public class Adder extends Number {
  private static final Logger LOGGER = Logger.getLogger(Adder.class.getName());
  private final Long value;

  public Adder(long value) {
    this.value = value;
    LOGGER.finest(() -> format("Value of %d", value));
  }

  public Adder add(long value) {
    LOGGER.fine(() -> format("Adding %d", value));
    return new Adder(this.value + value);
  }

  @Override
  public int intValue() {
    return value.intValue();
  }

  @Override
  public long longValue() {
    return value;
  }

  @Override
  public float floatValue() {
    return value.floatValue();
  }

  @Override
  public double doubleValue() {
    return value.doubleValue();
  }
}
