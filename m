Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LuFGo2pBWppZgIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 14 May 2026 12:53:01 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BC2540A20
	for <lists+usrp-users@lfdr.de>; Thu, 14 May 2026 12:52:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A4F938A2B3
	for <lists+usrp-users@lfdr.de>; Thu, 14 May 2026 06:52:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778755978; bh=ozjHUbJ1ZABmHvqgI5aBHxA4dwdjTEza10i/rdn7lEc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=OKRh+3whwDgls2tcqKfujXRKyymTn4k+mF4GMOp1dkFYuGlyWRZ6QexbhPerXcMwc
	 xSdgbxX9QvIzU2erJcGVdW7jBl8+nqjN5DRtxXM1HpWshjoV5tFne1m0dov75n/vAu
	 ZqFUzynesZIXjg9kdlaNFfmmMnM4zcgg7XkchfS6ohrQLWZxg4BgAo2qy8A00eoE1b
	 dAYKnpLVJVhpM5FAnkvBjH8sFC65DSbbAsdK3wTRm/9cX50HsMjWLAZppmdnctTReh
	 +NJ3oleTXETPuY5Mx1pnlcCrc5ERCBALHrlklXTKfpkeE0txi6JbYdW0pE3Ap0GKds
	 9OdHsL4ppN8Iw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E6263899F4
	for <usrp-users@lists.ettus.com>; Thu, 14 May 2026 06:52:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778755921; bh=k2HTpWcjIXlprkQ2oI4aqFP+KwUQThCzNWl5Ljyx2uI=;
	h=Date:To:From:Subject:From;
	b=TYrtFUZ33iZ49i5Xf75wRQR2aXxVA0HnNGvrxmGFV8M+y2z7nz9vdxf/LYpEH6UQT
	 MOXC8LxY0PKB40047Qd60qdkAw9/JzWq3iVCdN/vzxG62ucIdAUq4DuO5Iw6ljWKya
	 lF3dcBpESglPYfZmDavR1YfPptAdAlbd3Ab4o6J0Qyy4s88PQxmvOdasHFbKAT4Xxi
	 e6N/4Ob9RtL7fnK/jjmobOQg4S9R3ZeDR5MCUhkJANvNFKBiT8hy7UjOW1ARS1tUg5
	 cdrfpNTFsYhsHkQNOcCjVhrQ2+HMnIzbcLXHC4qD0T2E1MVqDimK5Nfbdzi+l3DOX6
	 seBRuqNlzhvXg==
Date: Thu, 14 May 2026 10:52:01 +0000
To: usrp-users@lists.ettus.com
Message-ID: <XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MH7WNVSLRCQ6Q6OI4LMVEKYCF5HDY2LF
X-Message-ID-Hash: MH7WNVSLRCQ6Q6OI4LMVEKYCF5HDY2LF
X-MailFrom: eunsung.son@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Questions about RFNoC DRAM Helper in UHD 4.10 on X410 UC_200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MH7WNVSLRCQ6Q6OI4LMVEKYCF5HDY2LF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "eunsung.son--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: eunsung.son@emerson.com
Content-Type: multipart/mixed; boundary="===============0723631308349328799=="
X-Rspamd-Queue-Id: 78BC2540A20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	HAS_REPLYTO(0.00)[eunsung.son@emerson.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns,emerson.com:replyto]
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============0723631308349328799==
Content-Type: multipart/alternative;
 boundary="b1_XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have two questions.

1. I would like to ask whether it is expected that the dram folder is not=
 included under the following RFNoC include path after installing the UHD=
 4.10 release version:

   C:\\Program Files\\UHD\\include\\uhd\\rfnoc\\dram

   However, I can see the dram folder in the UHD 4.10 source code, so I c=
opied it from the source code into the installed UHD include folder. Is i=
t okay to use it this way?

2. I am using an X410 with the UC_200 FPGA image, connected to a Windows =
host PC. The UHD version on the X410 is shown below:\
   \[INFO\] \[UHD\] linux; GNU C++ version 11.5.0; Boost_107800; UHD_4.10=
.0.0-0-g2af4ddb9

   After applying the workaround described in question 1, I used the uplo=
ad function in dram_helper.hpp to upload a recorded file from the host PC=
 to DRAM in order to improve the transfer speed.

   After running the program, I encountered the following error message:

   \[18:35:52\] \[ERROR\] \[XPORT::TX_DATA_XPORT\] Requested 'stop on seq=
uence error' stream mode but FPGA does not report that this mode is enabl=
ed. Please check whether the FPGA image supports this mode.

   \[18:35:53\] ERROR: RuntimeError: Requested 'stop on sequence error' s=
tream mode but FPGA does not report that this mode is enabled. Please che=
ck whether the FPGA image supports this mode.

   Do I need to modify the FPGA image to resolve this issue? Or is there =
another way to fix it?

=C2=A0

Thank you.

=C2=A0

Best regards,

Eunsung

--b1_XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I have two questions.</p><ol><li><p>I would like=
 to ask whether it is expected that the dram folder is not included under t=
he following RFNoC include path after installing the UHD 4.10 release versi=
on:</p><p>C:\Program Files\UHD\include\uhd\rfnoc\dram</p><p>However, I can =
see the dram folder in the UHD 4.10 source code, so I copied it from the so=
urce code into the installed UHD include folder. Is it okay to use it this =
way?</p></li><li><p>I am using an X410 with the UC_200 FPGA image, connecte=
d to a Windows host PC. The UHD version on the X410 is shown below:<br>[INF=
O] [UHD] linux; GNU C++ version 11.5.0; Boost_107800; UHD_4.10.0.0-0-g2af4d=
db9</p><p>After applying the workaround described in question 1, I used the=
 upload function in dram_helper.hpp to upload a recorded file from the host=
 PC to DRAM in order to improve the transfer speed.</p><p>After running the=
 program, I encountered the following error message:</p><p>[18:35:52] [ERRO=
R] [XPORT::TX_DATA_XPORT] Requested 'stop on sequence error' stream mode bu=
t FPGA does not report that this mode is enabled. Please check whether the =
FPGA image supports this mode.</p><p>[18:35:53] ERROR: RuntimeError: Reques=
ted 'stop on sequence error' stream mode but FPGA does not report that this=
 mode is enabled. Please check whether the FPGA image supports this mode.</=
p><p>Do I need to modify the FPGA image to resolve this issue? Or is there =
another way to fix it?</p></li></ol><p>&nbsp;</p><p>Thank you.</p><p>&nbsp;=
</p><p>Best regards,</p><p>Eunsung</p>

--b1_XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M--

--===============0723631308349328799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0723631308349328799==--
