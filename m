Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4F43B1D26
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 17:05:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C41738473C
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 11:05:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lrNG4/Lb";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 57FB838458B
	for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 11:04:49 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id c138so5961782qkg.5
        for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 08:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XFQE1ueFwVqCS0yMbkvRePOo2CnXGAWYX89HCIDH+1c=;
        b=lrNG4/Lbdwwhagu/sh0RVg5H9eECobJsUZ9neOJbHr6WZkfFmw/gNk2b2vAFmxrLYl
         8n60tB8WDL3euxWDwoqb9XAA5VFr7dQ+SEaPKViSQh7KMSSlicGgtj3g1ylCg+CPZc/T
         LtZ+lekScyCmnHUCbzpxBc+7mJin/m/Ep18tOr5SHwS3wckU/+8mnSfteQPRtxBLhf6r
         7sxpkpXTZEnz9QnyHyHVZOit1z8eSr1aByusWb5uQkGMsPGk8lyMEf7jMyifLpII/rFB
         xlGbQIHnIV9s19igrZ2lFEXWcdrKbie+Swshr7QRoGp7hwaJHIO0Wa5MvtXxqJ59tZZp
         1RrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XFQE1ueFwVqCS0yMbkvRePOo2CnXGAWYX89HCIDH+1c=;
        b=T8n9solHwfKAyFeWX7b324OdDGXMdFms6YMDL7LGAu+xuNyj22Gfw3cwA29JH55E0N
         X1bnJf0eSknAr9IGYC1uGTumGw79Y9t8h6X/gWi6ONXo8go9QHw0E7cuXEVIRYWTO028
         f73VaGoWuAsteGld3/580bKRWU72oiCwpy9B+G73eIPCo4bQbJUhENvYb4Jc0hVWyIEI
         InaFcUP6VSDc8A8dpFf5l/ntWOSIfMRNUNT797BrpitgGJ5s7IYF0Q9EJrePSslIaTk5
         f9VTfWCy5NoKpgD43nwoaDxokBy03YOJbnXq2g7GsTz+6+O86mdBZUudzTcsqgDlKVqh
         g8Gw==
X-Gm-Message-State: AOAM532cd5kYTkKPxq3YXGZhAAijfI1/UBBN/6lCXyNMYSf9VGbcJm3C
	JGf6nvpZMmuFmhoKGJvNNwBqEoJk0mV57n0e2KY=
X-Google-Smtp-Source: ABdhPJyHTZRd2eGIHx5r5qqrBnwx5E3EaoLnFcik+XeaUyb1tS3tDWn1tGtav2b6YZ/5DfHA7quLkAiUJrBkJHh5C/g=
X-Received: by 2002:a25:ca49:: with SMTP id a70mr12380617ybg.360.1624460688751;
 Wed, 23 Jun 2021 08:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAKazox0Np_582yPH4wv-aK3E8RmNS6t-AR2d=uca4L+ZshfqSg@mail.gmail.com>
 <CAGNhwTONgQ=yLgn_2oTjoUD=jYEsRnaUSLy3AM5-YZ++cMmrnw@mail.gmail.com> <CACaXmv8kc6FKgekOS6xV05r9iOnfjE8tgrOxJgC0qqyjo68yOQ@mail.gmail.com>
In-Reply-To: <CACaXmv8kc6FKgekOS6xV05r9iOnfjE8tgrOxJgC0qqyjo68yOQ@mail.gmail.com>
From: Daniel May <danielmay83@gmail.com>
Date: Wed, 23 Jun 2021 10:04:37 -0500
Message-ID: <CAKazox3MbxNEjVg=o6M0R6_F0o9SPntmoT63KCUs1w2avOxW7A@mail.gmail.com>
To: Neel Pandeya <neel.pandeya@ettus.com>
Message-ID-Hash: OJ3JHHV5WDWUWABYHMXRIAWZ7IK5UD6I
X-Message-ID-Hash: OJ3JHHV5WDWUWABYHMXRIAWZ7IK5UD6I
X-MailFrom: danielmay83@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 EOL Schedule?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJ3JHHV5WDWUWABYHMXRIAWZ7IK5UD6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4416179241684041661=="

--===============4416179241684041661==
Content-Type: multipart/alternative; boundary="0000000000004e03cc05c5703a4b"

--0000000000004e03cc05c5703a4b
Content-Type: text/plain; charset="UTF-8"

Neel, Michael,

Thanks for the information!

-Daniel

On Wed, Jun 23, 2021 at 10:01 AM Neel Pandeya <neel.pandeya@ettus.com>
wrote:

> Hello Daniel May:
>
> We have plans to sell and support the USRP E310 at least through 2026.
>
> Please let me know if you need any further information.
>
> --Neel Pandeya
>
>
>
>
> On Wed, 23 Jun 2021 at 09:49, Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> Hi Daniel - There is no schedule to EOL the E310 or any other
>> currently available USRP. - MLD
>>
>>
>> On Wed, Jun 23, 2021 at 10:20 AM Daniel May <danielmay83@gmail.com>
>> wrote:
>>
>>> Is there currently an EOL schedule for the E310, or will the E310 be
>>> available for the foreseeable future?
>>>
>>> Thanks,
>>> Daniel
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000004e03cc05c5703a4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Neel, Michael,</div><div><br></div><div>Thanks for th=
e information!</div><div><br></div><div>-Daniel<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 23, 20=
21 at 10:01 AM Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com">n=
eel.pandeya@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif">Hello=C2=A0Daniel May:</d=
iv><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><b=
r></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">We have plans to sell and support the USRP E310 at least through 2026.</=
div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><=
br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-ser=
if">Please let me know if you need any further information.</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div>=
<div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">--Neel=
 Pandeya</font><div><br></div><div><br></div><div><br></div></div></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, 23 Jun 2021 at 09:49, Michael Dickens &lt;<a href=3D"mailto:mich=
ael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi=C2=A0Daniel - There is no schedule to EOL the E310 or any other=
 currently=C2=A0available USRP. - MLD<br><br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 23, 2021 at 10:20 =
AM Daniel May &lt;<a href=3D"mailto:danielmay83@gmail.com" target=3D"_blank=
">danielmay83@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Is there currently an EOL sche=
dule for the E310, or will the E310 be available for the foreseeable future=
?</div><div><br></div><div>Thanks,</div><div>Daniel<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--0000000000004e03cc05c5703a4b--

--===============4416179241684041661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4416179241684041661==--
