Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 206D037F839
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 14:53:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 662AA38426F
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 08:53:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dV4uSeex";
	dkim-atps=neutral
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mm2.emwd.com (Postfix) with ESMTPS id A272D383F93
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 08:52:39 -0400 (EDT)
Received: by mail-ot1-f46.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso23472579otn.3
        for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 05:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8DLg3xni1tJNvXKRvCOdgbDuKjUva4j8ZlFcLkppIgE=;
        b=dV4uSeexQj8sLrZ7P+jaq6Sga2nKufpCmGv8VUt2ougexDF5DljF815vRutrE+2dVo
         4I2QXAdP0476CcyOaqEBIKs6rakUkYInbrbG06GM2K6waOLs7NKkmoQjCOpskAIDeIHB
         48LO2uWKreGvR6hGzQs+MUhtbjR3RvvxdxfExAHyIKPIcBKV9PWSpJyAq90xBv67oBJ/
         Ljtqr9MlnxYgw8Ti0R5cLExVkZ7liTGSEE37EEFANeegyR+GGMVyCXObzGrmTeeHAH9s
         WLUM9M17FwLCEL9blKvij4oW3upcIaCBJwWo01kmepC1Y0nWHw/hd3jd7GF10Bo0BZV7
         zw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8DLg3xni1tJNvXKRvCOdgbDuKjUva4j8ZlFcLkppIgE=;
        b=KvmkOKpCv2qNeuMt7VSb3pqwUeAU6YM/B6iI7EhG3Npcbc7em6SbLPzKoSk/tn04OV
         zUfxuxbmz/vYu5Tj/7/QhZuTdpgEL++zcxpAsHbRSss95gq1EuXEwrAwBLEJpklWZ7n7
         j2+mh4PLj1KIqPm7Gt9KyQ9w+h9Kp2lInoEUflX+oeXQUAaGYJYTgpUm4BK1iL2aNB41
         pXZ56sB1siqqnmiTspVf+VAsUa2Hbd94encW3cnMYQIATrnkzFY3LoTVKCFNIQEBgqww
         CGDMv3SSIOepyznAnvPr1knLhjMM0D42/c6PhroZVRtsOuQ3bDVD9q5+bERfowY5toOe
         zfeg==
X-Gm-Message-State: AOAM5335alICGY/qWQMW9Hvlsf7RyJduh3CBmr7eaFDbXcLccdLoBrbn
	idMN6fLEzTQ2rXePz4Kw2cw2HdBreHbl/U7CZQ8CcA==
X-Google-Smtp-Source: ABdhPJzfNpPO/P5oiAM7NgVxacZhNPFy0gLnE5xL63BHS6J5z0GfL34knglIX4PrEIERL3jmKb7HcmznHlkACA5QFn0=
X-Received: by 2002:a9d:6145:: with SMTP id c5mr35082895otk.58.1620910358723;
 Thu, 13 May 2021 05:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB66123CC6EF4811FC745710BFD9529@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB66123CC6EF4811FC745710BFD9529@BLAPR09MB6612.namprd09.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 13 May 2021 08:52:28 -0400
Message-ID: <CAB__hTRG5iK7KaFKAcSGP50=wDWsqYLro14bksvRXzYBto95UQ@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: 6WS22ZSPCAM4ZKP5GBWKI77GH3TKVVO6
X-Message-ID-Hash: 6WS22ZSPCAM4ZKP5GBWKI77GH3TKVVO6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Failed to update E320 to UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6WS22ZSPCAM4ZKP5GBWKI77GH3TKVVO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4272572020910741704=="

--===============4272572020910741704==
Content-Type: multipart/alternative; boundary="0000000000002535ff05c2359a70"

--0000000000002535ff05c2359a70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,
I don't have an E320, but I did not experience any space issue using 16GB
cards with either N310 or N321. BTW, I used bmaptool for the writing which
is super fast compared to the other methods.
Rob

On Wed, May 12, 2021 at 12:24 PM Jeffrey P Long <jplong@mitre.org> wrote:

> I have a E320 that I wanted to update to UHD 4.0. I am currently at 3.15.
> I downloaded the mender artifact and image from files.ettus.com.
>
>
>
> I first tried to mend it. I scp=E2=80=99d it and attempted it. The follow=
ing is
> the result from that.
>
>
>
> root@ni-e320-31DCD15:~# mender -rootfs /home/root/usrp_e320_fs.mender
>
> INFO[0000] Configuration file does not exist: /var/lib/mender/mender.conf
> module=3Dconfig
>
> INFO[0000] Loaded configuration file: /etc/mender/mender.conf
> module=3Dconfig
>
> INFO[0000] Mender running on partition: /dev/mmcblk0p3   module=3Dmain
>
> INFO[0000] Start updating from local image file:
> [/home/root/usrp_e320_fs.mender]  module=3Drootfs
>
> Installing update from the artifact of size 89829376
>
> INFO[0000] no public key was provided for authenticating the artifact
> module=3Dinstaller
>
> ERRO[0000] Installation failed: installer: failed to read and install
> update: will not install artifact with state-scripts when installing from
> cmd-line. Use -f to override  module=3Drootfs
>
> ERRO[0000] installer: failed to read and install update: will not install
> artifact with state-scripts when installing from cmd-line. Use -f to
> override  module=3Dmain
>
> root@ni-e320-31DCD15:~#
>
>
>
> During this process, during the scp I noticed that it complained about th=
e
> disk being full. I am using a 16 GB sd card (actually the one that came
> with it) and there is nothing extra on it other than the standard UHD 3.1=
5
> etc. Thinking that might be an issue I decided to try popping the cover a=
nd
> building a new 16 GB card from scratch using the image I downloaded.
>
>
>
> After doing:
>
>
>
> jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_default-v4.0.0.0$
> sudo dd if=3Dusrp_e320_fs.sdimg of=3D/dev/sda bs=3D1M
>
> dd: error writing '/dev/sda': No space left on device
>
> 14773+0 records in
>
> 14772+0 records out
>
> 15489564672 bytes (15 GB, 14 GiB) copied, 1904.36 s, 8.1 MB/s
>
> jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_default-v4.0.0.0$
>
>
>
> When I tried to boot this popped up so that is probably no good based on
> it running out of space:
>
> [FAILED] Failed to start File System Check on /dev/mmcblk0p4.
>
> Then it went into emergency mode.
>
>
>
> Does UHD 4.0 require a bigger disk?
>
>
>
> Thanks
>
> Jeff Long
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002535ff05c2359a70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div>I don&#39;t have an E320, but I did not exper=
ience any space issue using 16GB cards with either N310 or N321. BTW, I use=
d bmaptool for the writing which is super fast compared to the other method=
s.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, May 12, 2021 at 12:24 PM Jeffrey P Long &lt;<=
a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-5080826358276551559WordSection1">
<p class=3D"MsoNormal">I have a E320 that I wanted to update to UHD 4.0. I =
am currently at 3.15. I downloaded the mender artifact and image from <a hr=
ef=3D"http://files.ettus.com" target=3D"_blank">files.ettus.com</a>.<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I first tried to mend it. I scp=E2=80=99d it and att=
empted it. The following is the result from that.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
root@ni-e320-31DCD15:~# mender -rootfs /home/root/usrp_e320_fs.mender
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
INFO[0000] Configuration file does not exist: /var/lib/mender/mender.conf=
=C2=A0 module=3Dconfig<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
INFO[0000] Loaded configuration file: /etc/mender/mender.conf=C2=A0 module=
=3Dconfig<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
INFO[0000] Mender running on partition: /dev/mmcblk0p3=C2=A0=C2=A0 module=
=3Dmain<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
INFO[0000] Start updating from local image file: [/home/root/usrp_e320_fs.m=
ender]=C2=A0 module=3Drootfs<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Installing update from the artifact of size 89829376<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
INFO[0000] no public key was provided for authenticating the artifact=C2=A0=
 module=3Dinstaller<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
ERRO[0000] Installation failed: installer: failed to read and install updat=
e: will not install artifact with state-scripts when installing from cmd-li=
ne. Use -f to override=C2=A0
 module=3Drootfs<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
ERRO[0000] installer: failed to read and install update: will not install a=
rtifact with state-scripts when installing from cmd-line. Use -f to overrid=
e=C2=A0 module=3Dmain<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
root@ni-e320-31DCD15:~#
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">During this process, during the scp I noticed that i=
t complained about the disk being full. I am using a 16 GB sd card (actuall=
y the one that came with it) and there is nothing extra on it other than th=
e standard UHD 3.15 etc. Thinking
 that might be an issue I decided to try popping the cover and building a n=
ew 16 GB card from scratch using the image I downloaded.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">After doing:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<a href=3D"mailto:jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_defa=
ult-v4.0.0.0$" target=3D"_blank">jplong@mm241897-pc:~/proj/ettus_e320/e3xx_=
e320_sdimg_default-v4.0.0.0$</a> sudo
 dd if=3Dusrp_e320_fs.sdimg of=3D/dev/sda bs=3D1M<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
dd: error writing &#39;/dev/sda&#39;: No space left on device<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
14773+0 records in<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
14772+0 records out<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
15489564672 bytes (15 GB, 14 GiB) copied, 1904.36 s, 8.1 MB/s<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<a href=3D"mailto:jplong@mm241897-pc:~/proj/ettus_e320/e3xx_e320_sdimg_defa=
ult-v4.0.0.0$" target=3D"_blank">jplong@mm241897-pc:~/proj/ettus_e320/e3xx_=
e320_sdimg_default-v4.0.0.0$</a>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When I tried to boot this popped up so that is proba=
bly no good based on it running out of space:<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
[FAILED] Failed to start File System Check on /dev/mmcblk0p4.<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal">Then it went into emergency mode.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Does UHD 4.0 require a bigger disk?<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff Long<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002535ff05c2359a70--

--===============4272572020910741704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4272572020910741704==--
