Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DE87B51A8
	for <lists+usrp-users@lfdr.de>; Mon,  2 Oct 2023 13:46:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F1FC385351
	for <lists+usrp-users@lfdr.de>; Mon,  2 Oct 2023 07:46:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696247195; bh=nJW8IF2XVJOVyc2zgwAs+Yaj4kjEfTxyeF7a0OxTzc0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OWLpOhashxntmfILz5TrVii2dIbHlmaHs+1IkuNwaqOTofKCDVveZTiSBUBJxvDYr
	 AGrG9C3tQNwuhep+SoCXWGdv4BHAkSQdr7rfv+SU1RalneBXvVxc+xD8mc5baBaWLd
	 FB5pY8rNuaBDK1Fc+CujfTWR1hISC88AVsbPMoz7SPq0GU7Y/UBcJqSKzL9HnluJ6r
	 EpTeu7qTKZMEdw9UY+SA0eX7jycNAyJi5cH+A9BO4q5IKBEK8EWFoQMBEN+w4rzVzh
	 ZPKddFnO54RcXFAjNdxUq2Ohf+f15gTNMwEnMJSZoZybJPBVzjPcRlMP2dGsQVXSFm
	 d8vKVenr3ME4Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A08A338532E
	for <usrp-users@lists.ettus.com>; Mon,  2 Oct 2023 07:46:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696247188; bh=8gd6BHtC2B7+MdtF+qABuCd/gRjpO28sxUy28G/Hh4M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UKfQ+3iA7ROVQrxhlQwjTm3EFODnq+Pq+yptk9rT+NuuGvm0Rj7is1dvVuRg+Vb/8
	 qPH7fr6a457AVKI89UvEaIw4GnAKEuCeB/NAtPlzFtk5/GYS0k1rhipOrxkRHtC5dC
	 Tizq/MtcfHzhQ08dBQR0eIoEU5zCA8XPk6wlyHMQrfyl0C+GGnWbnK6Z3eM6R6OvTK
	 aR50nrsHpwSuvR4kAGxfo4TwOUxefS3OzejV2pniCwaIaME++QkStuEFN82SANvqLZ
	 gH+Mc3Kk8ak6q9VcasevXxfcS8vp73Fv6goIPQQ+0Zsk73VL8YrsrR6GAnqgtubiol
	 tf3lwcGc+plrQ==
Date: Mon, 2 Oct 2023 11:46:28 +0000
To: usrp-users@lists.ettus.com
From: usama.khurram@hotmail.com
Message-ID: <ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3cce3301-8c58-26ae-8e44-b03188d62f85@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6AVCGLIUT7OUCD3SVP4EOPK4KFVCEPDG
X-Message-ID-Hash: 6AVCGLIUT7OUCD3SVP4EOPK4KFVCEPDG
X-MailFrom: usama.khurram@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AVCGLIUT7OUCD3SVP4EOPK4KFVCEPDG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3342648363351482504=="

This is a multi-part message in MIME format.

--===============3342648363351482504==
Content-Type: multipart/alternative;
 boundary="b1_ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA
Content-Type: text/plain; charset=us-ascii

Thanks, I applied, also downloaded something using this URL(https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card) for my N3XX, now Folder is updated but still getting the same error. Please help me once again.\
\
usama@modena:\~$ uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.0.0.0-240-gb38c9d83

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=False,addr=192.168.30.212

\[WARNING\] \[MPM.RPCServer\] A timeout event occured!

\[WARNING\] \[MPM.PeriphManager\] Cannot run deinit(), device was never fully initialized!

Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'

usama@modena:\~$ uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.0.0.0-240-gb38c9d83

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=True,addr=192.168.30.212

\[WARNING\] \[MPM.RPCServer\] A timeout event occured!

\[WARNING\] \[MPM.PeriphManager\] Cannot run deinit(), device was never fully initialized!

Error: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id'

usama@modena:\~$ sudo uhd_images_downloader --type n310 --type sdimg

\[sudo\] password for usama: 

\[INFO\] Using base URL: https://files.ettus.com/binaries/cache/

\[INFO\] Images destination: /usr/local/share/uhd/images

\[INFO\] No targets matching '\['n310', 'sdimg'\]'

usama@modena:\~$ sudo uhd_images_downloader -t sdimg -t n3xx

\[INFO\] Using base URL: https://files.ettus.com/binaries/cache/

\[INFO\] Images destination: /usr/local/share/uhd/images

\[INFO\] Target n3xx_common_sdimg_default is up to date.

usama@modena:\~$ sudo uhd_images_downloader -t sdimg -t n3xx

\[INFO\] Using base URL: https://files.ettus.com/binaries/cache/

\[INFO\] Images destination: /usr/local/share/uhd/images

**\[INFO\] Target n3xx_common_sdimg_default is up to date.**

usama@modena:\~$

--b1_ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Thanks, I applied, also downloaded something using this URL(https://kb.e=
ttus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card) for my N3XX,=
 now Folder is updated but still getting the same error. Please help me onc=
e again.<br><br>usama@modena:~$ uhd_usrp_probe</p><p>[INFO] [UHD] linux; GN=
U C++ version 11.4.0; Boost_107400; UHD_4.0.0.0-240-gb38c9d83</p><p>[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.=
30.212,type=3Dn3xx,product=3Dn310,serial=3D319841E,claimed=3DFalse,addr=3D1=
92.168.30.212</p><p>[WARNING] [MPM.RPCServer] A timeout event occured!</p><=
p>[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully=
 initialized!</p><p>Error: rpc::timeout: Timeout of 2000ms while calling RP=
C function 'set_device_id'</p><p>usama@modena:~$ uhd_usrp_probe</p><p>[INFO=
] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.0.0.0-240-gb38c9=
d83</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm=
t_addr=3D192.168.30.212,type=3Dn3xx,product=3Dn310,serial=3D319841E,claimed=
=3DTrue,addr=3D192.168.30.212</p><p>[WARNING] [MPM.RPCServer] A timeout eve=
nt occured!</p><p>[WARNING] [MPM.PeriphManager] Cannot run deinit(), device=
 was never fully initialized!</p><p>Error: rpc::timeout: Timeout of 2000ms =
while calling RPC function 'set_device_id'</p><p>usama@modena:~$ sudo uhd_i=
mages_downloader --type n310 --type sdimg</p><p>[sudo] password for usama: =
</p><p>[INFO] Using base URL: https://files.ettus.com/binaries/cache/</p><p=
>[INFO] Images destination: /usr/local/share/uhd/images</p><p>[INFO] No tar=
gets matching '['n310', 'sdimg']'</p><p>usama@modena:~$ sudo uhd_images_dow=
nloader -t sdimg -t n3xx</p><p>[INFO] Using base URL: https://files.ettus.c=
om/binaries/cache/</p><p>[INFO] Images destination: /usr/local/share/uhd/im=
ages</p><p>[INFO] Target n3xx_common_sdimg_default is up to date.</p><p>usa=
ma@modena:~$ sudo uhd_images_downloader -t sdimg -t n3xx</p><p>[INFO] Using=
 base URL: https://files.ettus.com/binaries/cache/</p><p>[INFO] Images dest=
ination: /usr/local/share/uhd/images</p><p><strong>[INFO] Target n3xx_commo=
n_sdimg_default is up to date.</strong></p><p>usama@modena:~$</p>

--b1_ItJHGFl0F9Yik2zVTTAqo8IlUSvaxZ844OAlhdYaA--

--===============3342648363351482504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3342648363351482504==--
