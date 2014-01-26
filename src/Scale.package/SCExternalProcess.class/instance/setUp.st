running
setUp

	stdout := ('stdout', self hash asString) asFileReference openWritable: true; yourself.
	stderr := ('stderr', self hash asString) asFileReference openWritable: true; yourself.