Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 973144679EE
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 16:03:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE99D383E8E
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 10:03:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DbIPLXYw";
	dkim-atps=neutral
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D1F51383B67
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 09:36:54 -0500 (EST)
Received: by mail-il1-f179.google.com with SMTP id 15so2902969ilq.2
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 06:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=LFsjeEu91QdkbtOM4kj7tgGJ3CeYST+Vjycec+0UAlk=;
        b=DbIPLXYwI2Ku7WkOJayCu0NqhWQj/P91PGH0A+vukUj4tzoRMuIdNf2AAos017f/ck
         QwnWhvLE6LrTAqwX3ARjgxYA+nA6MAq/XwPDq8ZusnYRhmwaNwQE+KA3a7CACRfrFqi2
         5LoUP5ln1IuRi5lTUJw2qtYiEjlaHz7ROVGjRlmT13TwdsHZkrxguX4CTReosM8YMbeC
         BYjSOnvMttKeZuhA7SH2AL23fuMeNtz+f7xPIVFQGqT15jllok2VVawkJj5EZjvvrME/
         wpM/jz3JhFw+HYx6foPNeIShi0ddu0ztayPe1lyQEr+TmlUnmKuDEVGrPmu1vMd2n+4M
         P7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=LFsjeEu91QdkbtOM4kj7tgGJ3CeYST+Vjycec+0UAlk=;
        b=v7Cvwd/5GKT41jtuIciyM3Y6+UbgV+Miu2CXTP9rlAhCle7UxyRVt8iILGWqGdLBGU
         PJMJwy+VOuT6tfdv02hxQNVsH13EawagLfY/e+siFs7gytj+pnog4OPbk8pBHA92vVlr
         CeUdXLHDYlJ9u1DY/TdP++5MeddjokCwdIKH8Gtz3SvsvBSRE82tOmOHla7wTuBG3TXp
         ftWmbrTxosWTGe4Gvk7WZ27znBRjHNz+1cmeisf2dLgg/PtYAg4EYkIOJd67Kht6QkAj
         99Zm9fC2j2A5ZrGmjd8STcEUhUQ8WB8AptPvS3/qJcmh60deLoPFDxV/yEb7ZhwSf8/C
         5w2w==
X-Gm-Message-State: AOAM5335HSX52jlkHSFaf0wd30puLRndFcriaDjUn8EgpSs5ijX29u9k
	YfAjs/zCy+dhLajp1P0+1ZLBZKbG31k=
X-Google-Smtp-Source: ABdhPJyGILD5AM1JDuROLMmFpoBLtDdBGA7D2W1IDunQ1ZEXSEV8xO0j6GJfSvFThVaePejzG6G3qw==
X-Received: by 2002:a05:6e02:690:: with SMTP id o16mr19464608ils.102.1638542213927;
        Fri, 03 Dec 2021 06:36:53 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id p7sm1790020ils.4.2021.12.03.06.36.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 06:36:53 -0800 (PST)
Message-ID: <0a5ac639-1c91-72a2-a104-8f17288c27e1@gmail.com>
Date: Fri, 3 Dec 2021 09:36:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0@lists.ettus.com>
Message-ID-Hash: VMI265L7Z4FUCTQ3GWV3D6DZDNTOODJF
X-Message-ID-Hash: VMI265L7Z4FUCTQ3GWV3D6DZDNTOODJF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VMI265L7Z4FUCTQ3GWV3D6DZDNTOODJF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1870645300588891422=="

This is a multi-part message in MIME format.
--===============1870645300588891422==
Content-Type: multipart/alternative;
 boundary="------------MA1TnAmkgwr4Dc7vfNBfMWez"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MA1TnAmkgwr4Dc7vfNBfMWez
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-03 09:14, iw1fnw@gmail.com wrote:
>
> I can try re-programming with new images (if not already done)=20
> starting from Vivado. Is this what you mean?
>
> I tried a flood ping. With up to 6000 bytes packet all is fine. With=20
> 7000 I start loosing a bit. With 8000 it loose 50%. I=E2=80=99m not sur=
e if=20
> this is normal with such long packets.
>
> |abusso@ttclabsdr:~$ sudo ping -s 6000 192.168.30.2 -f PING=20
> 192.168.30.2 (192.168.30.2) 6000(6028) bytes of data. . ---=20
> 192.168.30.2 ping statistics --- 147 packets transmitted, 146=20
> received, 0% packet loss, time 2875ms rtt min/avg/max/mdev =3D=20
> 19.729/25.174/27.233/1.240 ms, pipe 2, ipg/ewma 19.697/24.942 ms=20
> abusso@ttclabsdr:~$ sudo ping -s 7000 192.168.30.2 -f PING=20
> 192.168.30.2 (192.168.30.2) 7000(7028) bytes of data.=20
> ..................... --- 192.168.30.2 ping statistics --- 119 packets=20
> transmitted, 98 received, 17% packet loss, time 2235ms rtt=20
> min/avg/max/mdev =3D 22.885/101.313/137.328/24.301 ms, pipe 8, ipg/ewma=
=20
> 18.943/108.385 ms abusso@ttclabsdr:~$ sudo ping -s 8000 192.168.30.2=20
> -f PING 192.168.30.2 (192.168.30.2) 8000(8028) bytes of data.=20
> .....................................................................=20
> --- 192.168.30.2 ping statistics --- 138 packets transmitted, 69=20
> received, 50% packet loss, time 1799ms rtt min/avg/max/mdev =3D=20
> 26.077/111.479/130.336/20.520 ms, pipe 10, ipg/ewma 13.138/116.295 ms |
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
What type of NIC do you have?=C2=A0 What is the MTU setting?=C2=A0 If you=
 turn the=20
MTU down to 1500 and re-try your image load, what happens?

--------------MA1TnAmkgwr4Dc7vfNBfMWez
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-03 09:14, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:iw1fnw@gmail.com">iw1fnw@gmail.com</a=
>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I can try re-programming with new images (if not already done)
        starting from Vivado. Is this what you mean?</p>
      <p>I tried a flood ping. With up to 6000 bytes packet all is fine.
        With 7000 I start loosing a bit. With 8000 it loose 50%. I=E2=80=99=
m not
        sure if this is normal with such long packets.</p>
      <pre><code>abusso@ttclabsdr:~$ sudo ping -s 6000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 6000(6028) bytes of data.
.
--- 192.168.30.2 ping statistics ---
147 packets transmitted, 146 received, 0% packet loss, time 2875ms
rtt min/avg/max/mdev =3D 19.729/25.174/27.233/1.240 ms, pipe 2, ipg/ewma =
19.697/24.942 ms

abusso@ttclabsdr:~$ sudo ping -s 7000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 7000(7028) bytes of data.
.....................
--- 192.168.30.2 ping statistics ---
119 packets transmitted, 98 received, 17% packet loss, time 2235ms
rtt min/avg/max/mdev =3D 22.885/101.313/137.328/24.301 ms, pipe 8, ipg/ew=
ma 18.943/108.385 ms

abusso@ttclabsdr:~$ sudo ping -s 8000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 8000(8028) bytes of data.
.....................................................................
--- 192.168.30.2 ping statistics ---
138 packets transmitted, 69 received, 50% packet loss, time 1799ms
rtt min/avg/max/mdev =3D 26.077/111.479/130.336/20.520 ms, pipe 10, ipg/e=
wma 13.138/116.295 ms

</code></pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    What type of NIC do you have?=C2=A0 What is the MTU setting?=C2=A0 If=
 you turn
    the MTU down to 1500 and re-try your image load, what happens?<br>
    <br>
  </body>
</html>
--------------MA1TnAmkgwr4Dc7vfNBfMWez--

--===============1870645300588891422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1870645300588891422==--
