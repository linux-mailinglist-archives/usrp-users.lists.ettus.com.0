Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9865728D185
	for <lists+usrp-users@lfdr.de>; Tue, 13 Oct 2020 17:51:56 +0200 (CEST)
Received: from [::1] (port=48468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSMah-0001mx-4w; Tue, 13 Oct 2020 11:51:55 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:39384)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kSMad-0001UN-2m
 for usrp-users@lists.ettus.com; Tue, 13 Oct 2020 11:51:51 -0400
Received: by mail-ej1-f50.google.com with SMTP id lw21so475314ejb.6
 for <usrp-users@lists.ettus.com>; Tue, 13 Oct 2020 08:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WxE5jdWkv+UW/QFXhkV4n76UmjL3j50+fH+lapiuEhc=;
 b=Uew2U52y/PJZPCuADDXzaYvqxSGuKkJGZa5YGSmyOKovdiVNzcnNlyKkNANeKq7yqC
 S8u2quobPoRvhIGdm1WTFLQMiw+5Yi+ohbsRWcgp0zGzJKf64kuM7gqQx1FBay7edRo1
 sHicPLPhmpCY0oJfRXw0Y+KZvVH4CcK7C2aedwpIvF+PycfxyumngI8YDxZGBFEn89vT
 x4Nz2S5AGIWBzQ0rC60DNrSNAuRRfaz/Gf1MLDqo4IngW+5BsbVV5B48EkJ9QtUbMlym
 j/Yuz4NsGzzxPcUGYClGI2befiT3NGCzHTSfK9Sm03F+NuHExXAam7Zxiz+kXHugSwwV
 EUjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WxE5jdWkv+UW/QFXhkV4n76UmjL3j50+fH+lapiuEhc=;
 b=hvOtGpox0GABACL5Ipum8yWft4h5zhVL1KplwIgeHAUIUKvG5c8u5vmNmIE5GxJBiD
 Oh4oKyP8Nm701JikDnuEdew4MRXIYOeAvhkU84PYtIQKTArFFcMD8aZswszvsKBYnXps
 +8/06Y49SRx72urXSVCc3KHClmSmzID974ymmf+4g3mWy5uGGbmT92zRXqzk9TMNaXJ9
 9NNcYuAByrh+2UXjVS3InMryDXSwUjb5oUul764sM9LkZOMIqT89zZyI+jPwf6oiB4Ke
 BKvtmAHE8vBFfdBVAgTfjBtJrCE+CZlNz5KdnZrBIewENx4pvhP291K8Fi9doQGQeJjC
 MXqQ==
X-Gm-Message-State: AOAM530kegy7aGDPM6EsoF8eDpnH/o9iQRsESRukWgHSCMwb6l8Ysz1+
 rfr8GWYnQVGPieXQTC+5C5RgYBVZ+QWSURtLJOyhyg2x
X-Google-Smtp-Source: ABdhPJz7JEG+45wOzgi4tN69+qCLQU2rA2dNG4QoHWAzSqjmHG74YmnezQ9ZbYAirTbvZX0cCh55K+fy6SWLT0z/tvo=
X-Received: by 2002:a17:906:50e:: with SMTP id
 j14mr413073eja.138.1602604269963; 
 Tue, 13 Oct 2020 08:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
 <CAGp1hYoJS-hKQMVEDKixccCG+XLgw38WetZzTNBUnhoPckB_4g@mail.gmail.com>
In-Reply-To: <CAGp1hYoJS-hKQMVEDKixccCG+XLgw38WetZzTNBUnhoPckB_4g@mail.gmail.com>
Date: Tue, 13 Oct 2020 11:50:58 -0400
Message-ID: <CAGNhwTNXBH_s==RZ3eWxxDNy9zD-gCrD4OdcdSKyXR+W=cUMHA@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============2053759304813033019=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2053759304813033019==
Content-Type: multipart/alternative; boundary="0000000000003a217c05b18f6241"

--0000000000003a217c05b18f6241
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Pretty much any SFP+ to RJ-45 adapter should work. I have had very good
success with some generics from Amazon as well as some from fs.com . Note
that if your 10 GbE adapter provides SFP+ (not RJ-45), then using a DAC
cable ("direct attach copper": SFP+ <-> SFP+, without the RJ-45 conversion)
is a -lot- less expensive than RJ-45 <-> CAT6/7 <-> RJ-45 to SFP+ ...
Cheers! - MLD

On Tue, Oct 13, 2020 at 11:47 AM Derek Steinkamp via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I use the =E2=80=9CQNAP=E2=80=9D branded one on amazon with a cheapo 2m a=
ctive SFP cable
> and it works just fine on my N300!
>
> Derek
>
> On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I
>> could connect it to the SFP+ connector on my X310.
>>
>> Has anyone done this?  And, is there a particular SFP+ to RJ45 which
>> works well?  All I see on the Ettus website is the recommendation for us=
ing
>> the terminated cable and PC network adapter.
>>
>> Thanks,
>> Jeff
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003a217c05b18f6241
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Pretty much any SFP+ to RJ-45 adapter should work. I have =
had very good success with some generics from Amazon as well as some from <=
a href=3D"http://fs.com">fs.com</a> . Note that if your 10 GbE adapter prov=
ides SFP+ (not RJ-45), then using a DAC cable (&quot;direct attach copper&q=
uot;: SFP+ &lt;-&gt; SFP+, without the RJ-45 conversion) is a -lot- less ex=
pensive than RJ-45 &lt;-&gt; CAT6/7 &lt;-&gt; RJ-45 to SFP+ ... Cheers! - M=
LD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Oct 13, 2020 at 11:47 AM Derek Steinkamp via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">I use the =E2=80=9CQNAP=E2=80=9D branded one o=
n amazon with a cheapo 2m active SFP cable and it works just fine on my N30=
0!</div><div dir=3D"auto"><br></div><div dir=3D"auto">Derek</div><div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct=
 13, 2020 at 10:43 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Has anyone done this?=C2=A0 And, is there a particular SFP+ to RJ45 which w=
orks well?=C2=A0 All I see on the Ettus website is the recommendation for u=
sing the terminated cable and PC network adapter.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks,<br>
Jeff<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003a217c05b18f6241--


--===============2053759304813033019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2053759304813033019==--

