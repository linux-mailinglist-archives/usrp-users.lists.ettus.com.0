Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 817A25BA652
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 07:24:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AED4381331
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 01:24:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663305842; bh=zeiHA63LGaftWUJtJZqKTAJb17T3hOe3ft0xSYrbRwM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eaSXa/1o63N6whJIk4M17mFmSHlTz/BVPpJ+22iaZ3aEeMHxHM6ZBcvsFxVu+b26r
	 NahogucXimQDHrsvgoU4JSpJAIf8i1UdLFnVOaxI73K87jEkXdNhy7prOmKoVFMQj3
	 QS/UNZlAxfRIIGCe6jbfiXRenjXuC8ZjDvWAiagNFIcdj1oXWwhnGPwqYTcl0miOQX
	 hMVYUvvMn7bUJVCqBrXLCsfiIJWPFucaOGHCcmXg3E1zt4gnxARCWHF9FTgDn1WV+p
	 M2mg/HnBjukBnxasCxmMcTrHaWLVALI9I0+1TvIcJ0ew/AUP4UTmVF2t8vX5Oewy+N
	 rQX9kQHc/UFng==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DA15380A91
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 01:22:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663305734; bh=hSWj6b87RTAgFqX+vMkZLzTXzvBNtxGbHAWsd4lUC+M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=PFB1P8rWnHM4HkOOc/ByxTIXVwr49VO2iBvWJ1XOiJ1OSt/xJnI5Bs326JSXAR2YA
	 SYcTT2JNxTpxD4S40F5xy7v9rewQZOs6EPDT62OSKw3l1/go271SFo7XzmoojQc1Yq
	 cyWNZ2MQ1Zj/67LvdeIwjoO4tPEoQ7fcHI4pl+gglUvdbOfLNZzQSgXSdYL5zgOUyk
	 2cBj4WdFSyCoO7JMUlEIK1rsFOMB3FFwJCaE8Js897iWJAMmj2hNw9Fi2dcDBC8+2p
	 HDowB908PIQQp9kzQ1hXBRQ0Y671PwU6uaHLVQatp5xpcCeqOCFPkzljjUDaAyjguL
	 aVPCRRkirPrlQ==
Date: Fri, 16 Sep 2022 05:22:14 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <13qsOerI6jHz2OlmpY4bc222iuf8NuBH0f0pNLUKf8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b82354ee-8c70-4c2c-c667-832027419d38@o2.pl
MIME-Version: 1.0
Message-ID-Hash: 7FWXAHPNGHKMZTMV4YJOGOS5ZDE2Q3JE
X-Message-ID-Hash: 7FWXAHPNGHKMZTMV4YJOGOS5ZDE2Q3JE
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK 21.11
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FWXAHPNGHKMZTMV4YJOGOS5ZDE2Q3JE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9216869816270544648=="

This is a multi-part message in MIME format.

--===============9216869816270544648==
Content-Type: multipart/alternative;
 boundary="b1_13qsOerI6jHz2OlmpY4bc222iuf8NuBH0f0pNLUKf8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_13qsOerI6jHz2OlmpY4bc222iuf8NuBH0f0pNLUKf8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I just got the same error as you Meni. The reason was I had remainings of=
 old installation of DPDK, so I was mixing two versions.

As I wanted to use DPDK installed from packages I had to remove all trace=
s of DPDK from /usr/local directory.

The most important were headers (files with names rte_\*) from /usr/local=
/include directory.

So my advice: clean all traces of DPDK installations on your side and ins=
tall DPDK again.

=E2=80=94\
Best Regards,\
Piotr Krysik

> W dniu 28.07.2022 o=C2=A014:05, meni.dali@sabra-microsystems.com pisze:
>
> > I use UHD version 4.2 and x410.
> >
> > So far, I have been using DPDK version 18.11. Now I'm trying to
> > upgrade the DPDK to version 21.11.
> >
> > I have successfully installed the DPDK, However, when I compile the
> > UHD library I get the following error:
> >
> > 53%\] Linking CXX executable test_pps_input
> >
> > /usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined reference to \`lcore_c=
onfig'
> >
> > /usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined reference to
> > \`rte_eal_get_configuration'
> >
> > collect2: error: ld returned 1 exit status
> >
> > Does anyone have a clue what could be causing the error?
> >
> > Best regards
> >
> > Meni

--b1_13qsOerI6jHz2OlmpY4bc222iuf8NuBH0f0pNLUKf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I just got the same error as you Meni. The reason was I h=
ad remainings of old installation of DPDK, so I was mixing two versions.<=
/p><p>As I wanted to use DPDK installed from packages I had to remove all=
 traces of DPDK from /usr/local directory.</p><p>The most important were =
headers (files with names rte_*) from /usr/local/include directory.</p><p=
>So my advice: clean all traces of DPDK installations on your side and in=
stall DPDK again.</p><p>=E2=80=94<br>Best Regards,<br>Piotr Krysik</p><bl=
ockquote><p>W dniu 28.07.2022 o&nbsp;14:05, meni.dali@sabra-microsystems.=
com pisze:</p><blockquote><p>I use UHD version 4.2 and x410.</p><p>So far=
, I have been using DPDK version 18.11. Now I'm trying to
upgrade the DPDK to version 21.11.</p><p>I have successfully installed th=
e DPDK, However, when I compile the
UHD library I get the following error:</p><p>53%] Linking CXX executable =
test_pps_input</p><p>/usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined refer=
ence to `lcore_config'</p><p>/usr/bin/ld: ../lib/libuhd.so.4.2.0: undefin=
ed reference to
`rte_eal_get_configuration'</p><p>collect2: error: ld returned 1 exit sta=
tus</p><p>Does anyone have a clue what could be causing the error?</p><p>=
Best regards</p><p>Meni</p></blockquote></blockquote>


--b1_13qsOerI6jHz2OlmpY4bc222iuf8NuBH0f0pNLUKf8--

--===============9216869816270544648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9216869816270544648==--
