Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2592AFAE6
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 12:56:15 +0200 (CEST)
Received: from [::1] (port=57770 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i80ID-0006mC-Ja; Wed, 11 Sep 2019 06:56:09 -0400
Received: from sidious.ihf.ing.tu-bs.de ([134.169.78.12]:35556)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fabian.schwartau@ihf.tu-bs.de>)
 id 1i80I9-0006gh-A5
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 06:56:05 -0400
Received: from localhost (localhost [127.0.0.1])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTP id 1089D83D2A65
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 12:55:24 +0200 (CEST)
X-Virus-Scanned: by amavisd-new-2.10.1 (20141025) (Debian) at ihf.ing.tu-bs.de
Received: from sidious.ihf.ing.tu-bs.de ([127.0.0.1])
 by localhost (sidious.ihf.ing.tu-bs.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hneTGuqHf4-9; Wed, 11 Sep 2019 12:55:23 +0200 (CEST)
Received: from [134.169.78.184] (unknown [134.169.78.184])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTPSA id 49B6B83D2A61
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 12:55:23 +0200 (CEST)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <83e999e6-8940-ed5a-2b41-342f54564286@ihf.tu-bs.de>
Date: Wed, 11 Sep 2019 12:55:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------AB96C071C5D3DB97EB956983"
X-Antivirus: AVG (VPS 190910-2, 10.09.2019), Outbound message
X-Antivirus-Status: Clean
Subject: [USRP-users] No respone packet error caused by timed frequency
 switching
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Fabian Schwartau via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Fabian Schwartau <fabian.schwartau@ihf.tu-bs.de>
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--------------AB96C071C5D3DB97EB956983
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi everyone,

I already asked this the ettus support, but they did not got back to me 
yet, maybe someone here can help me.
I am working on X310 with TwinRX boards. I use a lot of timed commands 
and since upgrading the firmware from 003.010.002.000 to 003.014.001.001 
I get this error message after a few minutes/seconds, depending on what 
I am doing:
terminate called after throwing an instance of 'uhd::io_error'
   what():  EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no 
response packet - AssertionError: bool(buff)
   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) 
[with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = 
long unsigned int]
   at 
/home/fschwa/src/uhd_20191010_3.14.1.1-RC1/host/lib/rfnoc/ctrl_iface.cpp:142 


I know there is a very similar (same?) problem when requesting rx_stream 
in a loop, but I am not doing that. In my actual program I have only on 
rx_stream. I was able to boil that problem down to a few lines of code, 
which set the rx frequency in a loop (what I am doing in my actual 
program). When doing this with timed commands, the error occures after a 
few dozens of iterations. Leaving out the timed command, everything 
works fine. Find the small program attached.
After I ran into the problem the USRP is completely unresponsive. I have 
to power cycle it, to get it working again.
Does anyone know a solution/workaround or has seen that before?

Best regards,
Fabian
-- 
--------------------------------------------------
M.-Sc. Fabian Schwartau
Technische Universität Braunschweig
Institut für Hochfrequenztechnik
Schleinitzstr. 22
38106 Braunschweig
Germany

Tel.:   +49-(0)531-391-2017
Fax:    +49-(0)531-391-2045
Email:  fabian.schwartau@ihf.tu-bs.de
WWW:    http://www.tu-braunschweig.de/ihf
--------------------------------------------------

--------------AB96C071C5D3DB97EB956983
Content-Type: text/plain; charset=UTF-8;
 name="UHDIOError2.cpp"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="UHDIOError2.cpp"

Ly8gQ29tcGlsZSB3aXRoOgovLyBnKysgLXN0ZD1jKysxNCAtTzIgVUhESU9FcnJvcjIuY3Bw
IC1sdWhkIC1sYm9vc3Rfc3lzdGVtIC1vIFVIRElPRXJyb3IyCgojaW5jbHVkZSA8dWhkL3Vz
cnAvbXVsdGlfdXNycC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4K
I2luY2x1ZGUgPHVoZC91dGlscy90aHJlYWQuaHBwPgojaW5jbHVkZSA8aW9zdHJlYW0+Cgp1
c2luZyBuYW1lc3BhY2Ugc3RkOwoKaW50IFVIRF9TQUZFX01BSU4oaW50IGFyZ2MsIGNoYXIq
KiBhcmd2KQp7CiAgICB1aGQ6OnNldF90aHJlYWRfcHJpb3JpdHlfc2FmZSgpOwogICAgCiAg
ICBzdGQ6OnN0cmluZyBhcmdzPSJhZGRyPTE5Mi4xNjguNDIuMiI7CiAgICB1aGQ6OnVzcnA6
Om11bHRpX3VzcnA6OnNwdHIgdXNycCA9IHVoZDo6dXNycDo6bXVsdGlfdXNycDo6bWFrZShh
cmdzKTsKICAgIHN0ZDo6c3RyaW5nIHN1YmRldl9zcGVjPSJBOjAiOwogICAgdXNycC0+c2V0
X3J4X3N1YmRldl9zcGVjKHN1YmRldl9zcGVjKTsKICAgIHVzcnAtPnNldF9yeF9yYXRlKDI1
ZTYsIDApOwogICAgdXNycC0+c2V0X3J4X2ZyZXEoMTI0MGU2LCAwKTsKICAgIHVzcnAtPnNl
dF9yeF9nYWluKDUwLjAsIDApOwogICAgdXNycC0+c2V0X3J4X2FudGVubmEoIlJYMSIsIDAp
OwoKICAgIHVoZDo6dGltZV9zcGVjX3QgbmV4dENvbW1hbmRUaW1lID0gdXNycC0+Z2V0X3Rp
bWVfbm93KCk7CiAgICBuZXh0Q29tbWFuZFRpbWUgKz0gdWhkOjp0aW1lX3NwZWNfdCgwLjUp
OwoKICAgIGZvciAoaW50IGl0ZXJhdGlvbj0wOyBpdGVyYXRpb248MTAwMDsgaXRlcmF0aW9u
KyspIHsKICAgICAgICB1c3JwLT5zZXRfY29tbWFuZF90aW1lKG5leHRDb21tYW5kVGltZSk7
CiAgICAgICAgdXNycC0+c2V0X3J4X2ZyZXEoMTAwMGU2LCAwKTsKICAgICAgICBuZXh0Q29t
bWFuZFRpbWUgKz0gdWhkOjp0aW1lX3NwZWNfdCgwLjAyKTsKICAgICAgICBjb3V0IDw8ICJp
dGVyYXRpb246ICI8PCBpdGVyYXRpb24gPDwgZW5kbDsKICAgIH0KICAgIHJldHVybiAwOwp9
Cgo=
--------------AB96C071C5D3DB97EB956983
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------AB96C071C5D3DB97EB956983--

