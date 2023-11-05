Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8587E16DB
	for <lists+usrp-users@lfdr.de>; Sun,  5 Nov 2023 22:36:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A2E73854F8
	for <lists+usrp-users@lfdr.de>; Sun,  5 Nov 2023 16:36:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699220214; bh=lS3NVmgk3+cnek410LxejZGnQw6IFYmDEKhAwXA5lL0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vvKddcSJdpgxZBaGuUHiiz12/NxCntsjqlt1s8fIRHHQyegdLwFJREgEoik0OKF0b
	 0hYv+XuO6oHGT/zxafXv7vfmCfR08NAHT+odJobGaE5uAVCtYD1Q/XhmTubng8pkEO
	 gt/e0gsewGV1Hv32GR5UfkZZLbSvigdwwqLZHabnG5O3sw4qFhCc46ufLCXtIgBXbp
	 i59AyzwkUP1gNmFJFgbZj8cnsdv+dd9DDSD2SXHzHMxMwcO19+XvKW5Eox9XuCrTP1
	 bO4ktKUZWBcjirqjUmfPSvm6ujBDGw4aY6hbolu8y7w7Gr1Kk1uQwfdgS4HBs0r6FE
	 nNkJZiEXomLEA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F5403850CD
	for <usrp-users@lists.ettus.com>; Sun,  5 Nov 2023 16:36:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699220204; bh=SHnvNioXfwRW5I0x46orZOM7AZDCVRAlAsTmGlTPkpg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ckil7zzNZZNSwmkTjZJtIhSC4C3iuMpy/psuGYqE/MrM+KfvKFdnjrmRa8cCxBJsm
	 iPlHaSzda6BuCwmnpUUim2uZ4dAoMjkyquxgpilb3EgsK89HI7fDn8NJsuNlgFHeeT
	 sDguAoyj5YeYby7REvOts3QjMNZbEw84gRKbf1KMfYEthzEd9A/AreMYFHtQ2YbjO9
	 7Nn+2/H0sGuIy78Pt0HwHq/qVNv9+tsO+rUwuvKpm34W3hn6d5CK2DiRPKHIZkgdwq
	 w+gsX6B/iv+LjMEtf7ZegQEncuyp1LyxdCiLq+IzUxhOWOqEstR/6vjOeV8MJOY8Et
	 1Fq0oXzNiPMug==
Date: Sun, 5 Nov 2023 21:36:44 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <w1EYesAHnAd40HiIxfVVye37szEeK2ing4zZGWM9fc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jD=F+V_8h_6ZtZ5N8BLOBfq_3u=y958TNGRXkfm39rSg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BKBBUN5ZWZQUDIQXHWJ5KGJURIBYCSD2
X-Message-ID-Hash: BKBBUN5ZWZQUDIQXHWJ5KGJURIBYCSD2
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC TB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKBBUN5ZWZQUDIQXHWJ5KGJURIBYCSD2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7025805100121132478=="

This is a multi-part message in MIME format.

--===============7025805100121132478==
Content-Type: multipart/alternative;
 boundary="b1_w1EYesAHnAd40HiIxfVVye37szEeK2ing4zZGWM9fc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_w1EYesAHnAd40HiIxfVVye37szEeK2ing4zZGWM9fc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry to bother again. I have tried the next  code but vivado freezes whe=
n it reaches recv_items. What i want is to read the file and send every t=
ime i have a packet of 64.=20

The txt file is something like this:

69 58

\-53 268

=E2=80=A6

`FILE=3D$fopen("input.txt","r");`

`        send_samples =3D {};`

`        while($fgets(line,FILE)) begin`

`              code =3D $sscanf(line,"%d %d",a,b);`

`              $displayh("code %0d %0d",a,b);`

`              c =3D {a, b};`

`              send_samples.push_back(c);`

`              i =3D i + 1;`

`              if (i =3D=3D SPP) `

`                begin`

`                    send_samples =3D {};`

`                    i =3D 0;`

`                    blk_ctrl.send_items(0, send_samples);`

`                    blk_ctrl.recv_items(0, recv_samples);`

`                end`

`           end`

`         $fclose(FILE);`

--b1_w1EYesAHnAd40HiIxfVVye37szEeK2ing4zZGWM9fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p><br></p><p>Sorry to bother again. I have tried the next  code =
but vivado freezes when it reaches recv_items. What i want is to read the f=
ile and send every time i have a packet of 64. </p><p><br></p><p>The txt fi=
le is something like this:</p><p>69 58</p><p>-53 268</p><p>=E2=80=A6</p><p>=
<code>FILE=3D$fopen("input.txt","r");</code></p><p><code>        send_sampl=
es =3D {};</code></p><p><code>        while($fgets(line,FILE)) begin</code>=
</p><p><code>              code =3D $sscanf(line,"%d %d",a,b);</code></p><p=
><code>              $displayh("code %0d %0d",a,b);</code></p><p><code>    =
          c =3D {a, b};</code></p><p><code>              send_samples.push_=
back(c);</code></p><p><code>              i =3D i + 1;</code></p><p><code> =
             if (i =3D=3D SPP) </code></p><p><code>                begin</c=
ode></p><p><code>                    send_samples =3D {};</code></p><p><cod=
e>                    i =3D 0;</code></p><p><code>                    blk_c=
trl.send_items(0, send_samples);</code></p><p><code>                    blk=
_ctrl.recv_items(0, recv_samples);</code></p><p><code>                end</=
code></p><p><code>           end</code></p><p><code>         $fclose(FILE);=
</code></p>

--b1_w1EYesAHnAd40HiIxfVVye37szEeK2ing4zZGWM9fc--

--===============7025805100121132478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7025805100121132478==--
