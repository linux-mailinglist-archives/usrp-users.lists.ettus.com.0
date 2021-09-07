Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C795F402FA5
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 22:25:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1579B3845BF
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 16:25:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=fel.cvut.cz header.i=@fel.cvut.cz header.b="FBIqKne6";
	dkim-atps=neutral
Received: from smtpx.feld.cvut.cz (smtpx.feld.cvut.cz [147.32.210.153])
	by mm2.emwd.com (Postfix) with ESMTPS id 8229138455F
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 16:25:07 -0400 (EDT)
Received: from localhost (styx [192.168.200.7])
	by smtpx.feld.cvut.cz (Postfix) with ESMTP id 086A04B947
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 22:25:06 +0200 (CEST)
X-Virus-Scanned: IMAP STYX AMAVIS
Received: from smtpx.feld.cvut.cz ([192.168.200.2])
	by localhost (styx.feld.cvut.cz [192.168.200.7]) (amavisd-new, port 10060)
	with ESMTP id jBhwY0eiybRz for <usrp-users@lists.ettus.com>;
	Tue,  7 Sep 2021 22:25:03 +0200 (CEST)
Received: from wimap.feld.cvut.cz (wimap.feld.cvut.cz [147.32.210.168])
	(Authenticated sender: tywonemi)
	by smtpx.feld.cvut.cz (Postfix) with ESMTPA id C80C84BA30
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 22:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fel.cvut.cz;
	s=felmail; t=1631046303;
	bh=urCtDG2NLuuGM1VDFtSgumvflwET7c5l7nfaQ2PlOnI=;
	h=Date:From:To:Subject:From;
	b=FBIqKne6CJtGnpjUR0rbJKl7LzAewJEKAR3R/IFWSEdTmdYXg8eAjbxIOA+2Km58r
	 z3lfo/+3KpoEfdtVVOTSQAhL8bpfrDWyegSnw80qAWFcCvLlsdD9IA/X5AFvkEoDxz
	 u6CZ9ylfH8AlHm+45vIkI4y93t+xmZSzq77paFued4/eCVAjg01tdB/qAXeBvJsSvT
	 ua+aLdKyfPwPLQuVszkoAFrgdbbd0DhJfg8IebOkcSzaNogidyBPyxEJ7sdk2F7eDv
	 1p0vZnXdZ+aD42MTJjpKLWHac2OpjbYSbrJheybWNXTUGVPqjf0pwSXp1lgR52NqRr
	 h+m73Z+6Dh81Q==
Date: Tue, 07 Sep 2021 22:25:03 +0200
Message-ID: <20210907222503.Horde.1VehEQybsJZtjZQOIfHL6dd@wimap.feld.cvut.cz>
From: tywonemi@fel.cvut.cz
To: usrp-users@lists.ettus.com
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: N3H46YR4D4F7MPWKHMY7UNQH36OWRZZ5
X-Message-ID-Hash: N3H46YR4D4F7MPWKHMY7UNQH36OWRZZ5
X-MailFrom: tywonemi@fel.cvut.cz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Struggling to build kernel and userspace for x400
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3H46YR4D4F7MPWKHMY7UNQH36OWRZZ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="Yes"
Content-Transfer-Encoding: 7bit

Dear USRP maintainers,

As my master's thesis I've set out to port the GNU Radio RFNoC to the  
RFSoC 2x2 development board for purposes of academic research of  
optical communications, and I have some issues. If it's more practical  
for you, feel free to forward me to written resources I may have missed.
First some context: The motivation for this is rapid development and  
measurement on a digitizer-like platform without RF frontends. Since  
USRP x410 has the same SoC on board, the easiest way for me to do this  
will be to use as much of the existing open source work done by  
forking the USRP design. However, I'm getting stuck on building yocto  
due to a symbol duplicate in gdbm build within the oe-core package.
There seem to be several steps involved in this port/fork - stubbing  
the RF frontend controls and removing support in the UHD host drivers,  
adapting the board constraints, possibly reducing some buffer sizes  
due to lower available PL RAM, but right now I am trying to verify if  
I'll be able to get access to all the sources and tools required to  
make the processing subsystem pipe or filter samples between the hard  
logic gigabit ethernet controller and the programmable logic with the  
RFNoC crossbar, and to perform the RFNoC control operations. This is  
because the RFSoC 2x2 lacks an SFP-like interface for higher bandwidth  
data packet streaming. It's only mentioned in one line in the x410  
manual:
Like other USRPs, it is addressable through a 1 GbE RJ45 connector,  
which allows full access to the embedded Linux system, as well as data  
streaming at low rates.
I'd like to build Linux for the USRP to see what sources it pulls and  
to verify and maybe modify the datapath from the gigabit controller  
through the driver to the PL. However, I have trouble getting it to  
build.
I'm running Arch Linux with GCC 11.1, kas 2.5 (directly, no docker image).
On meta-ettus repository, tag v4.1.0.2-rc3, running  
`./contrib/kas_build_imgs_package.sh x4xx` fails the oe-core step:

| /home/emil/school/meta-ettus/build/tmp-glibc/hosttools/ld:  
./libgdbmapp.a(parseopt.o):(.bss+0x8): multiple definition of  
`parseopt_program_args'; gdbmtool.o:(.data.rel.local+0x260): first  
defined here
| /home/emil/school/meta-ettus/build/tmp-glibc/hosttools/ld:  
./libgdbmapp.a(parseopt.o):(.bss+0x10): multiple definition of  
`parseopt_program_doc'; gdbmtool.o:(.data.rel.local+0x268): first  
defined here

Is this replicable for you? It happens to me with the x4xx-prerelease  
tag, too. Is there some frozen development setup environment that  
should be used? Is that included in the kas docker? If so, how would I  
invoke kas from docker to use the yaml configs?

Also, I've gone through the "MPM" and "firmware" sections of the UHD  
tree looking for software that would run on the SoC and configure the  
gigabit ethernet and work with it. For example, in x300, this is done  
in firmware/usrp3/x300/x300_init.c but I have not found any  
configuration (any eventual calls to xge_* etc). Am I wrong to assume  
that this code has not been published yet? Is it going to be made open  
source in the future? It really seems like everything else is present,  
but the actual userspace software running on the x400.

Best regards,

Emil J Tywoniak,
Faculty of Electrical Engineering
Czech Technical University in Prague
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
