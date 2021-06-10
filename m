Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDA53A23FF
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 07:27:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 248EF384695
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 01:27:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZbG/ATAH";
	dkim-atps=neutral
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id DD6483840A6
	for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 01:26:49 -0400 (EDT)
Received: by mail-yb1-f169.google.com with SMTP id e10so38939707ybb.7
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 22:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P+5ySeCYbRtg53g14lREBZU5JbFdZLhQoRx0lqP7bwE=;
        b=ZbG/ATAHMrtrvdYEKdq8TS3Q4ZAalkUkQy1poE1WMyJGrs82Nt9TwtBl9kvrqiGq81
         Sb75wdAk6TZm579OLWQ8qCc8k8mi3IsPm2DwAh4lAedO5eHkp7Q5n4RhwGd3w3KYeXIT
         6hU2hXuQQ9LiTI8nYnSEPCc2AlSZPTCoDV0JCcOiiH0tFqJEWmFzYrpHZH9hp4qiwxAe
         6Dq+BUh5JZxCNa8FgUdaupDtgkzq5xHrJbmXH7+ABULMmxvRz60PJWeAlATpJavtxiJl
         DW/kVIsv1dp6uGu6qf9yEs48jtAIdhTHqXRqMlohSXbarv3XYBSsQCXW36xqJPkFEXhK
         0pLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P+5ySeCYbRtg53g14lREBZU5JbFdZLhQoRx0lqP7bwE=;
        b=DQu220K786Q54bs1thkfg/x3rZQYgja6FUZRX3H9UZvEWyRduI/4Y9VdNbAXupZaUh
         J+Kjh+C1HAkb4Y3Oll05tRfKDluHMo9tD11bOl36+r4kxZ9tnAskYs7V0CPVhtNpN0yJ
         BKe6t8UXvAf7aB3ysWuhpzsFV2gSgVBz0v66zQdK89Ie5m3THDu+zwBCjSNtm8r/ThEB
         r+Uy7+QoGRVvw6FugLhzR/6igjOguy8cmUQM0IIzCDFO67GpI1aPm3/fbf1bDEkns48X
         wSjArl/lRIJeHMwTlQ1HfMCs3WRc4kFxKwvtsCiFT2GQrDZj360D6y7VLgsOZLrGjRkx
         zNTQ==
X-Gm-Message-State: AOAM531fZtVE9i1WKjdhD866NQ5qGsDxt1AzOKbigRm9854/3Fhls8p5
	shbE6VloUdIwj2OLkCyFPOFJCqQddBxSpEjQd90=
X-Google-Smtp-Source: ABdhPJxwLyZDgLaugZ+nmsEnBoe8X4Rd1H8wmckFSxYRMMd0eM6JKbG7nKYQ0s2YLsjb3NabcU56ys/gJanIpP6W1p0=
X-Received: by 2002:a05:6902:110e:: with SMTP id o14mr5150751ybu.284.1623302809128;
 Wed, 09 Jun 2021 22:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <CACSyVY3+ah-VOMt-tmLYV1L=WeD5bqwoqBdGZpukc+u3EDTYYw@mail.gmail.com>
 <A4D85519-A78A-4160-B0EB-759D8A8B1836@gmail.com>
In-Reply-To: <A4D85519-A78A-4160-B0EB-759D8A8B1836@gmail.com>
From: Kelvin Lok <kelvin.lok266@gmail.com>
Date: Thu, 10 Jun 2021 13:26:38 +0800
Message-ID: <CACSyVY3Wt-kE156c1T4P9iMCJnBGFHhm6WpmoK0Q67yTU_mVjQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: SNI4W7IDICAAYAORBQ7GPSBD4HD2JL5R
X-Message-ID-Hash: SNI4W7IDICAAYAORBQ7GPSBD4HD2JL5R
X-MailFrom: kelvin.lok266@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [KeyError] for X310 on Windows 10, UHD 3.15
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SNI4W7IDICAAYAORBQ7GPSBD4HD2JL5R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7190848724970236355=="

--===============7190848724970236355==
Content-Type: multipart/alternative; boundary="0000000000004d133605c462a348"

--0000000000004d133605c462a348
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Both computers are connected to only a single x310 at a time, 10GB
SPF+ through to a x520 NIC.

If it helps, I also noticed that on Computer B, uhd_find_devices.exe gives
an error if I run it without args, but works if I specify the 192.168.40.2
ip address.
This is the error for uhd_find_devices

*[No UHD Devices FoundERROR] [UHD]*
(This isn't a typo, it prints exactly this error in cmdprompt)

Anyone with a similar issue and managed to resolve it?

On Thu, Jun 10, 2021 at 10:22 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Does computer B perhaps have another USRp on its network port? (Clutching
> at straws I=E2=80=99ll admit).
>
>
>
> Sent from my iPhone
>
> On Jun 9, 2021, at 10:14 PM, Kelvin Lok <kelvin.lok266@gmail.com> wrote:
>
> =EF=BB=BF
> I am having trouble with this error message. "*Error: LookupError:
> KeyError: Unknown settings register name: DDS_FREQ*", on a X310 usrp.
> I have 2 UHD installations of UHD on 2 different computers. Computer A ha=
s
> internet access, Computer B does not have internet access. Both computers
> use UHD 3.15 built from source (Github), running windows 10. On Computer =
A,
> I am able to run uhd_usrp_probe.exe without any issues. On computer B I g=
et
> the DDS_Freq KeyError.
>
> I initially thought it was an image issue, but the same x310 works on
> Computer A but faces error on Computer B.
>
> Even copying the same uhd binaries and images from A to B, and running on
> B shows the same error. I also ran a cmd prompt session and reset the
> environment variables for uhd_images_dir.
>
> Any advice on what I could be doing wrong?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000004d133605c462a348
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Both computers are connected to only a single x310 at a ti=
me, 10GB SPF+=C2=A0through to a x520 NIC.=C2=A0<div><br></div><div>If it he=
lps, I also=C2=A0noticed that on Computer B, uhd_find_devices.exe gives an =
error if I run it without args, but works if I specify the 192.168.40.2 ip =
address.<div>This is the error for uhd_find_devices<br><div><b><font face=
=3D"verdana, sans-serif">[No UHD Devices FoundERROR<br>] [UHD]</font></b></=
div><div>(This isn&#39;t a typo, it prints exactly this error in cmdprompt)=
<b><font face=3D"verdana, sans-serif"><br></font></b></div></div></div><div=
><br></div><div>Anyone with a similar issue and managed to resolve it?</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Jun 10, 2021 at 10:22 AM Marcus D Leech &lt;<a href=3D"mailto:patc=
hvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Does computer=
 B perhaps have another USRp on its network port? (Clutching at straws I=E2=
=80=99ll admit).=C2=A0<div><br></div><div><br><br><div dir=3D"ltr">Sent fro=
m my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 9, 2=
021, at 10:14 PM, Kelvin Lok &lt;<a href=3D"mailto:kelvin.lok266@gmail.com"=
 target=3D"_blank">kelvin.lok266@gmail.com</a>&gt; wrote:<br><br></blockquo=
te></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"lt=
r">I am having trouble with this error message. &quot;<b><font face=3D"verd=
ana, sans-serif">Error: LookupError: KeyError: Unknown settings register na=
me: DDS_FREQ</font></b>&quot;, on a=C2=A0X310 usrp.<div>I have 2 UHD instal=
lations of UHD on 2 different computers. Computer A has internet access, Co=
mputer B does not have internet access. Both computers use=C2=A0UHD 3.15 bu=
ilt from source (Github), running=C2=A0windows 10. On Computer A, I am able=
 to run uhd_usrp_probe.exe without any issues. On computer B I get the DDS_=
Freq KeyError.</div><div><br></div><div>I initially thought it was an image=
 issue, but the same x310 works on Computer A but faces error on Computer B=
.</div><div><br></div><div>Even copying the same uhd binaries and images fr=
om A to B, and running on B shows the same error. I also ran a cmd prompt s=
ession and reset the environment variables for uhd_images_dir.</div><div><b=
r></div><div>Any advice on what I could be doing wrong?</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--0000000000004d133605c462a348--

--===============7190848724970236355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7190848724970236355==--
