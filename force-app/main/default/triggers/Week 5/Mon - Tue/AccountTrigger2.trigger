trigger AccountTrigger2 on SOBJECT (after insert) {
    System.debug('after insert trigger called');
}