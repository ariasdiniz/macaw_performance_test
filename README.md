# Performance Test for MacawFramework (Version 1.2.0)

This micro-software was developed with the single objective of testing the framework's capacity to handle numerous simultaneous requests. For this test, all non-essential features were disabled, such as cache and log aspects. The number of virtual threads that Macaw used was the default number of 200 using Ruby version 3.2.2 (MRI). The test was executed on the same machine the server was running using Apache JMeter on October 5, 2023.

## Test Overview
- Software Memory Usage: 243.3 MB (average)
- Test Duration: 58 seconds
- Concurrency: 20

## Test Results
The performance test was conducted on the software, and the following results were obtained:

| Label          | # Samples | Average | Min  | Max  | Std. Dev. | Throughput | Received KB/sec | Sent KB/sec     | Avg. Bytes |
|----------------|-----------|---------|------|------|-----------|------------|-----------------|-----------------|------------|
| HTTP Request   | 600,000   | 1 ms    | 0 ms | 6 ms | 0.50 ms   | 10,196.45  | 268.85 KB/sec   | 1,174.98 KB/sec | 27.0 bytes |

## Analysis
- The software exhibited an average memory consumption of 243.3 MB during the test.
- The test results indicate that the software handled 600,000 HTTP requests with an average response time of 1 millisecond.
- Throughput was measured at 10,196.45 requests per second.
- The received and sent data rates were 268.85 KB/sec and 1,174.98 KB/sec, respectively.
- The average response size was 27.0 bytes.
- When testing with logging enabled, throughput was almost halved, suggesting that this feature can severely degrade performance on applications meant to sustain heavy traffic.

## Conclusion
Based on the performance test results executed on October 5, 2023, the framework itself appears to perform well under heavy load, with low memory usage. The response times and throughput indicate that the framework can handle a significant load of HTTP requests without significant performance degradation.
