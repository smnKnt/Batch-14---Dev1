trigger AccountTrigger on Account (before insert) {
	system.debug('before insert çalıştı');
}