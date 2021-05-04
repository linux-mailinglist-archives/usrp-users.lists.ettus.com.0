Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F0A372DF2
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 18:22:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6BA6384B09
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 12:22:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="wZy3IC1U";
	dkim-atps=neutral
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id D66E6384201
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 12:21:38 -0400 (EDT)
Received: by mail-ej1-f47.google.com with SMTP id a4so14089489ejk.1
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 09:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=LOzroC+/eBOLMy5KO5QHkI+K/Db7gXoVxMu+jBrTgHo=;
        b=wZy3IC1UcBYULtm88wJNv5gHkJm9WZnLLkEKA6rYLV9EYfTyugyfYqeGn4koG2VZSZ
         vww8ums1kSOHdvHbCq6uBsJS8flunQJyQ9BKD5E6KohDrKRyOSBGCijLKMIX6WJj79pv
         1Mvdg/3QUaDXIpQw07Hr/7l08HIKXBUHjjNNZi6C43sTQ/yJ1L5SZkN3l9R4lNCq/qpX
         BYlTl9uQGPZuAZyHSKJhcEIsWmaZidXvcf4mshmVUpjphQs9QpT299s3Nk2CpFTBAFY3
         n29DNnFxLbG3i10TNh5WdAt8vUN6aD9mDaN1z79UUbgNd1EQ80UmL3SqWnYKhyCR5Kn9
         Q71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=LOzroC+/eBOLMy5KO5QHkI+K/Db7gXoVxMu+jBrTgHo=;
        b=Xr4dWpuccY7KHdb1KRkN3fSZKRwTE/kJIqKRHXiOTvICzyf9J2bQPF5/IWE2fPi9O6
         XsNFR59zxFIZqAaRmM57FV+PpfLIwKQECUpSzcfSnx8bY6EuUg7rXVsJhVXFpAKAh+Wq
         /EKWL6LzAVp0kC49pIGef9jPe6Er1PMSCQIk7QW9gsKugZgruf/K5QejlfZRqnSs3q6d
         HFHT2bsJVKzGjtWC3SRhepB7j+RjS3OHs7WGHjlFRbxSIVV2Mg/muU3Ibd/cKjlTCZ3G
         AqJA9lAXaXGHNAqgE4FhHGBIdqBjt10gmirzgI1qU7O9OKinAhA7Y12sTEiYXzUW+sSV
         6UcQ==
X-Gm-Message-State: AOAM530ubv+rn9WdW4Q5CYOUOSutZVmjXLBC0s9lo9FftcedP/45cAkf
	6MBN+koNP728t6Rebal6DZduCQvQM28PSRQnyifn4oGOKxE39Q==
X-Google-Smtp-Source: ABdhPJwxKHQA9S9sbqPYneQZLAN4/+71pV7CEcn2WOwGIRJA1Znmw85dfqE3B7822gOv9gSX+DnN/3SEYupdg9yyaP0=
X-Received: by 2002:a17:906:7ac9:: with SMTP id k9mr23077244ejo.229.1620145297420;
 Tue, 04 May 2021 09:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
 <CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com>
 <BY3PR09MB7316062E0274087C3ABD493EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
 <CAEXYVK6pEM48uyu4W=MzEhpakysLHVJ9u+MZEJSDgHqC0nHuGA@mail.gmail.com>
In-Reply-To: <CAEXYVK6pEM48uyu4W=MzEhpakysLHVJ9u+MZEJSDgHqC0nHuGA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 4 May 2021 18:21:26 +0200
Message-ID: <CAFOi1A7wrsRj2zjp8VCpz-O0fq+MLxnsvuBQTwEdq=EPx=H1eg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ZIMAZC5QYZXX7SWBP5247V7YBDZLXM6B
X-Message-ID-Hash: ZIMAZC5QYZXX7SWBP5247V7YBDZLXM6B
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bare metal development on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZIMAZC5QYZXX7SWBP5247V7YBDZLXM6B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0864483631999022373=="

--===============0864483631999022373==
Content-Type: multipart/alternative; boundary="000000000000f00d4405c183789d"

--000000000000f00d4405c183789d
Content-Type: text/plain; charset="UTF-8"

You can remove the DDC/DUC blocks in UHD 4.0. You can also remove the radio
block if you're not using a multi_usrp object.

If you're not expecting software to touch data, you could throw in a single
Rasberry Pi to run the UHD sessions and keep RFNoC/UHD for everything else.
That would set up routing, DACs/ADCs, clocks and avoid having to
reimplement LMK setup routines or whatever in HDL. Then you can keep the
FPGA purely for whatever you want to use it for.

--M

On Thu, Apr 29, 2021 at 12:23 AM Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Apr 28, 2021 at 5:38 PM Eugene Grayver <eugene.grayver@aero.org>
> wrote:
>
>> That's what I was afraid of.  Note that I do not need any daughter cards
>> (just LFTX/LFRX), which reduces the number of configuration items.
>> My main concern is that I was going to take over the ethernet interface.
>> I guess I can take over one and leave the other one for UHD.  I am also
>> concerned that the UHD will complain loudly once i start taking blocks out
>> of the flowgraph that it expects to be there.
>>
>
> Sounds like a good idea about using one ethernet interface for UHD and the
> other for your application.  Can you explain a bit more about why you want
> to shun a host computer running UHD and do everything in HDL?
>
> As for UHD complaining, are you going to be using UHD 3.15 or 4.0?  If
> 3.15, then I don't think I've had any issues just connecting the blocks I
> care about in a graph and have it be fine (i.e. CustomBlock -> Radio and
> Radio -> CustomBlock).  With 4.0, the only blocks I am not sure about are
> the DUC/DDC blocks - everything else is very much optional and could be
> setup in a static configuration.
>
> I know for the X310 FPGA build that you can't remove the PCIe interface
> stuff, and I feel like UHD needs to see the Radio device there, too.  But
> otherwise, make everything into a single custom block and you should be
> good.
>
> I will say that I've built some custom blocks that did some very minimal
> communication over UHD for status and control.  I created a converter()
> class/function for transferring my packed data structure through UHD.  That
> might be useful if you're doing something that isn't sample based.
>
>   https://files.ettus.com/manual/page_converters.html
>
> Good luck!
>
> Brian
>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f00d4405c183789d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can remove the DDC/DUC blocks in UHD 4.0. You can=
 also remove the radio block if you&#39;re not using a multi_usrp object.<b=
r></div><div><br></div><div>If you&#39;re not expecting software to touch d=
ata, you could throw in a single Rasberry Pi to run the UHD sessions and ke=
ep RFNoC/UHD for everything else. That would set up routing, DACs/ADCs, clo=
cks and avoid having to reimplement LMK setup routines or whatever in HDL. =
Then you can keep the FPGA purely for whatever you want to use it for.</div=
><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 29, 2021 at 12:23 AM Brian Pa=
dalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 28, 2021 at 5:38 PM Eugene Grayver =
&lt;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.gra=
yver@aero.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
That&#39;s what I was afraid of.=C2=A0 Note that I do not need any daughter=
 cards (just LFTX/LFRX), which reduces the number of configuration items.</=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
My main concern is that I was going to take over the ethernet interface.=C2=
=A0 I guess I can take over one and leave the other one for UHD.=C2=A0 I am=
 also concerned that the UHD will complain loudly once i start taking block=
s out of the flowgraph that it expects to
 be there.</div></div></blockquote><div><br></div><div>Sounds like a good i=
dea about using one ethernet interface for UHD and the other for your appli=
cation.=C2=A0 Can you explain a bit more about why you want to shun a host =
computer running UHD and do everything in HDL?</div><div><br></div><div>As =
for UHD complaining, are you going to be using UHD 3.15 or 4.0?=C2=A0 If 3.=
15, then I don&#39;t think I&#39;ve had any issues just connecting the bloc=
ks I care about in a graph and have it be fine (i.e. CustomBlock -&gt; Radi=
o and Radio -&gt; CustomBlock).=C2=A0 With 4.0, the only blocks I am not su=
re about are the DUC/DDC blocks - everything else is very much optional and=
 could be setup in a static configuration.</div><div><br></div><div>I know =
for the X310 FPGA build that you can&#39;t remove the PCIe interface stuff,=
 and I feel like UHD needs to see the Radio device there, too.=C2=A0 But ot=
herwise, make everything into a single custom block and you should be good.=
</div><div><br></div><div>I will say that I&#39;ve built some custom blocks=
 that did some very minimal communication over UHD for status and control.=
=C2=A0 I created a converter() class/function for transferring my packed da=
ta structure through UHD.=C2=A0 That might be useful if you&#39;re doing so=
mething that isn&#39;t sample based.</div><div><br></div><div>=C2=A0=C2=A0<=
a href=3D"https://files.ettus.com/manual/page_converters.html" target=3D"_b=
lank">https://files.ettus.com/manual/page_converters.html</a></div><div><br=
></div><div>Good luck!</div><div><br></div><div>Brian</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div dir=3D"ltr"><d=
iv>
</div>
</div>
</div>
</div>

</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f00d4405c183789d--

--===============0864483631999022373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0864483631999022373==--
