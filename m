Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 333E35B4517
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 10:00:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8276383BD1
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 04:00:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662796845; bh=LvJVH0jz8V6PGtSO415UW73e7crE1ObKXnX56nRaUw4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MqKZf6jnFjbb+r5oKJtARx59kS4NRPFLgCc4n/Ggb4q9G83GiG2hFoEyzman8dCVJ
	 x91t5HiuxXl/A1Di+TG0U+4igPQ7Dp3X1feKRvlxdnhYtur88Ryg7+H0Bp3It4JgFn
	 9fEbhP6/fEIedR6vp8X+s7Xi0kNBkZK+JLRPZWLkCv3xtbhxWyjxR4285bmismBRIv
	 bzTFuCtymd9xlkjnLmjiFjhDg5MMBrYeoX0ZrjCl26xn2573phequWXtO2T4f9Is/u
	 NrMHoexGxxECLmDriW9Djf2H1nlNV4BJzoofVP6vaX9DXU+LMopicPLVHXvaiG/l0L
	 fVikHgWjPh6gQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A151B380F68
	for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 03:58:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662796732; bh=+XqiC9raHwLviGXNQncbQQdWdepEkllwNVrZXRUu3yA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oQ8clPQeW7TQ7CgOQc4lYsrS9tduxPIIzfmW12bFo3hFzpBptawD7LfY+9i5kmhmy
	 oVOYiJrcmyq4wTEYEdblwRTixWHGpqgydJ7ZuqhdPkQ9X7fPYJlYMhUR2/6+V9itJC
	 84Wv0c/6e0Tf0vBBy5ZC0CoDGVBs0zrET2VrgwUafcUSLR9yGThjClxpFUtLkHfoxs
	 a/6ONmNi9cI0Y4/CWJv+a9gU7NdmeXWCq7DW335Og9yT/JsXnT73m9ahJzM+rOZ8mn
	 08Fs112kW7b/QhnGhPL6YWkZAo3bQxZI0CzspETdQUAL8A85ZEgJu56bwg0vmoODuH
	 Gl6/KKxBYJm9w==
Date: Sat, 10 Sep 2022 07:58:52 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <bLj9DnEUogHJ458pg2VSSuSBFqQHWEm1WgmqQKYU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BN2P110MB1747706C0DC81186F4442A64B7439@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: BUDYSXMRATXOJJBQBYA35WLZ352YAJOB
X-Message-ID-Hash: BUDYSXMRATXOJJBQBYA35WLZ352YAJOB
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUDYSXMRATXOJJBQBYA35WLZ352YAJOB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7621859174900410496=="

This is a multi-part message in MIME format.

--===============7621859174900410496==
Content-Type: multipart/alternative;
 boundary="b1_bLj9DnEUogHJ458pg2VSSuSBFqQHWEm1WgmqQKYU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bLj9DnEUogHJ458pg2VSSuSBFqQHWEm1WgmqQKYU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

David Raeman wrote:

> > In case you try turning off GPSDO on E320 please share info if it hel=
ps.
>
> Hi Piotr,
>
> I was able to disable the power rail for the GPSDO and confirmed it res=
olves this issue. So the problem is correlated with GPSDO activity in som=
e way, even though its TCXO net is de-selected at the clock selection swi=
tch (U55). I=E2=80=99d be curious to probe some pins on the board to obse=
rve the clock signal as it moves through the clocking front-end. Unfortun=
ately my E320 cannot be removed from its chassis at the moment, but perha=
ps I=E2=80=99ll take a look when I get an opportunity later.
>
> Unfortunately the enable_gps arg is not honored upon connection to an M=
PM device =E2=80=93 the power state of the GPSDO on the E320 is establish=
ed when the MPM daemon is started on the radio at power-on, and (as far a=
s I can see) it cannot be changed on a per-session basis. I=E2=80=99ve pr=
epared a small UHD patch that allows the enable_gps arg to be used at ses=
sion initialization. Then an application (such as mine) could choose to d=
isable the GPSDO at run-time when using an external clock, or leave it po=
wered up otherwise.
>
> One final observation, this problem is alluded to as a known issue on t=
he B2xx radios \[1\], but is not documented for the E320.
>
> \-David
>
> \[1\] https://files.ettus.com/manual/page_usrp_b200.html#b200_known_iss=
ues

Hi David,

I wasn=E2=80=99t precise in what I=E2=80=99ve written. enable_gps is not =
parameter that you pass with args that you set when creating USRP=E2=80=99=
s object (like IP of the device) but you should set it in the /etc/uhd/mp=
m.conf file in your USRP=E2=80=99s filesystem, so it is loaded during MPM=
 daemon start. You can read about it in the url that I=E2=80=99ve sent pr=
eviously. More details are here:

https://files.ettus.com/manual/page_configfiles.html#configfiles_usrps_mp=
m

Best Regards,\
Piotr Krysik

--b1_bLj9DnEUogHJ458pg2VSSuSBFqQHWEm1WgmqQKYU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>David Raeman wrote:</p><blockquote><blockquote><p>In case you try turnin=
g off GPSDO on E320 please share info if it helps.</p></blockquote><p>Hi Pi=
otr,</p><p>I was able to disable the power rail for the GPSDO and confirmed=
 it resolves this issue. So the problem is correlated with GPSDO activity i=
n some way, even though its TCXO net is de-selected at the clock selection =
switch (U55). I=E2=80=99d be curious to probe some pins on the board to obs=
erve the clock signal as it moves through the clocking front-end. Unfortuna=
tely my E320 cannot be removed from its chassis at the moment, but perhaps =
I=E2=80=99ll take a look when I get an opportunity later.</p><p>Unfortunate=
ly the enable_gps arg is not honored upon connection to an MPM device =
=E2=80=93 the power state of the GPSDO on the E320 is established when the =
MPM daemon is started on the radio at power-on, and (as far as I can see) i=
t cannot be changed on a per-session basis. I=E2=80=99ve prepared a small U=
HD patch that allows the enable_gps arg to be used at session initializatio=
n. Then an application (such as mine) could choose to disable the GPSDO at =
run-time when using an external clock, or leave it powered up otherwise.</p=
><p>One final observation, this problem is alluded to as a known issue on t=
he B2xx radios [1], but is not documented for the E320.</p><p>-David</p><p>=
[1] https://files.ettus.com/manual/page_usrp_b200.html#b200_known_issues</p=
></blockquote><p>Hi David,</p><p>I wasn=E2=80=99t precise in what I=
=E2=80=99ve written. enable_gps is not parameter that you pass with args th=
at you set when creating USRP=E2=80=99s object (like IP of the device) but =
you should set it in the /etc/uhd/mpm.conf file in your USRP=E2=80=99s file=
system, so it is loaded during MPM daemon start. You can read about it in t=
he url that I=E2=80=99ve sent previously. More details are here:</p><p>http=
s://files.ettus.com/manual/page_configfiles.html#configfiles_usrps_mpm</p><=
p>Best Regards,<br>Piotr Krysik</p>

--b1_bLj9DnEUogHJ458pg2VSSuSBFqQHWEm1WgmqQKYU--

--===============7621859174900410496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7621859174900410496==--
