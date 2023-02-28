trigger AccountTrigger2 on Account (after insert) {
    System.debug('after insert trigger called');
}