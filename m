Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 625B6222713
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jul 2020 17:33:19 +0200 (CEST)
Received: from [::1] (port=44070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jw5sr-0002xp-4w; Thu, 16 Jul 2020 11:33:17 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:46471)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jw5sn-0002oK-Hc
 for USRP-users@lists.ettus.com; Thu, 16 Jul 2020 11:33:13 -0400
Received: by mail-qt1-f181.google.com with SMTP id i3so5144082qtq.13
 for <USRP-users@lists.ettus.com>; Thu, 16 Jul 2020 08:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=pa/GRVLSki/Dk2/ke2qMLLrPt24FhkRbcLZc5LqSX5U=;
 b=l4wx7aHwwTErD5Rb+F6fef7eOBboikszS7CVaH6Mi6bC83SDJp9XEVRXL+xzS8DOUK
 KBEa+Lf1FEa5bXVm4pybXfpKyLmIYvoavkMQlM2Kw98AtBqRDzvXGkhrdqSlxkq4KSRO
 kVMKGQX7KnpLz6rUu+57np/l4Q1f/kTQV7ITKYWVQjAlbCNteyfZyQ01W1fXes2PNtS/
 KJmdvvCIziNkrIT42FE2RGxDrijdTNrww0C1cQ8dGqNjdrdUsUTPrByeN8hmYkpGh7p6
 Lbz2h/w+CXRZM/q56iLrNMZFw6nOy0JAc00m4+oYuGFRTTolxbtwW1f52kQF6w5/JJPZ
 n3Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=pa/GRVLSki/Dk2/ke2qMLLrPt24FhkRbcLZc5LqSX5U=;
 b=rEGA0kmEo3FLvMHMAP/QzMwMGY5sVEihfp8WDjyO2ic9X/rahETC3poJNstgvYAsbF
 yjZgVJa2q/xTph3pmueKibd1Z/tmEfREWKwiKFFaFqrT0Z55/avMMtQL8DvccqowkCs1
 TBd9b6GFAxSSvayxVBaGHf//MNRiTUNybsZmt/mwl9Xj2x+/lxURykCwdH9W5rpD9qQN
 ZboFfhLj62ofxVQOJJUvBu77/gvwUyaB6Ez7M1NDz9bWybxeRHwj0wWZmb2aUoET3qm4
 koXUpBVaH0r0gfbh2FeMQwkP2UEKgevMFSS2upCygMJsunLBVkTBRH76NjH3rSB88k6q
 W04g==
X-Gm-Message-State: AOAM530ZyJCCU40KfuEoGtgjSW5FwajAemR60fkbu0Mwl1c5HVtW3luq
 eGVB8rK3A6U20nqrEMIgD0Q=
X-Google-Smtp-Source: ABdhPJzmAntsE1T1tO5OlTmQbAuj1aXy03vwyh5GgJmNsiprdHovPCTzIlXoPRV9lB9sT2uvO9BP5w==
X-Received: by 2002:aed:21da:: with SMTP id m26mr5743740qtc.197.1594913552801; 
 Thu, 16 Jul 2020 08:32:32 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id t35sm8947144qth.79.2020.07.16.08.32.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jul 2020 08:32:32 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 16 Jul 2020 11:32:31 -0400
Message-Id: <E4FE1198-9DFC-4243-AA0E-1CD0CA28F29E@gmail.com>
References: <CAMVZM+9iK7QnPQjT11Dpf-YdGqVJpgadgqNZMdnXZXDQPXfN4g@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAMVZM+9iK7QnPQjT11Dpf-YdGqVJpgadgqNZMdnXZXDQPXfN4g@mail.gmail.com>
To: Pavlos Basaras <pbasaras@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] error at updating the filesystem for usrp n310
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7066517170380478542=="
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


--===============7066517170380478542==
Content-Type: multipart/alternative; boundary=Apple-Mail-7087F49D-7741-4176-A3F2-E6CAEC4FDED5
Content-Transfer-Encoding: 7bit


--Apple-Mail-7087F49D-7741-4176-A3F2-E6CAEC4FDED5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

They in fact *must* be the same version for interoperability.=20

Sent from my iPhone

> On Jul 16, 2020, at 10:59 AM, Pavlos Basaras <pbasaras@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hello again,
>=20
> i updated the version of the host's uhd to  UHD_3.15.0.HEAD-0-gaea0e2de an=
d re-executed "sudo uhd_images_downloader -t mender -t n3xx --yes" .
> It solved the problem.=20
>=20
> One more thing is that after the update on the SD card file system, the uh=
d version of the usrp also got automatically updated to the uhd version in t=
he host.
> Its safe to assume that both the host and the USRP are fine with the same u=
hd version, correct?
>=20
> all the best,
> Pavlos.
>=20
>=20
>=20
>> On Thu, Jul 16, 2020 at 8:57 AM Pavlos Basaras <pbasaras@gmail.com> wrote=
:
>> Hello,
>>=20
>> in case it would help i am also attaching the dmesg output from the usrp.=

>>=20
>> best,
>> Pavlos.
>>=20
>>=20
>>> On Wed, Jul 15, 2020 at 5:14 PM Pavlos Basaras <pbasaras@gmail.com> wrot=
e:
>>> Hello,
>>>=20
>>> that would be great!
>>>=20
>>> cheers,
>>> Pavlos.
>>>=20
>>>> On Wed, Jul 15, 2020 at 5:07 PM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>>> On 07/15/2020 10:02 AM, Pavlos Basaras wrote:
>>>> > Hello,
>>>> >
>>>> > thank you very much for your prompt reply.
>>>> >
>>>> > i copied the .mender file by using the "scp" command.
>>>> > Yes, i am running the command on the USRP.
>>>> >
>>>> > I am not sure if this is a problem but --initially when i created the=
=20
>>>> > .mender file, the host was running the UHD 3.14.0.0 and the USRP had=20=

>>>> > 3.14.1.0. This is when the problem appeared first.
>>>> > Then i changed the uhd to 3.14.1.0 on the host to match exactly the=20=

>>>> > UHD on the usrp, but the error still persists (or course i deleted th=
e=20
>>>> > old file from the usrp).
>>>> >
>>>> > any ideas?
>>>> >
>>>> > best,
>>>> > P.
>>>> >
>>>> I'll have to bug some R&D people and get back to you.
>>>>=20
>>>>=20

--Apple-Mail-7087F49D-7741-4176-A3F2-E6CAEC4FDED5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">They in fact *must* be the same version for=
 interoperability.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 16, 2020, at 10:59 AM, P=
avlos Basaras &lt;pbasaras@gmail.com&gt; wrote:<br><br></blockquote></div><b=
lockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hell=
o again,</div><div><br></div><div>i updated the version of the host's uhd to=
&nbsp; UHD_3.15.0.HEAD-0-gaea0e2de and re-executed "sudo uhd_images_download=
er -t mender -t n3xx --yes" .</div><div>It solved the problem. <br></div><di=
v><br></div><div>One more thing is that after the update on the SD card file=
 system, the uhd version of the usrp also got automatically updated to the u=
hd version in the host.</div><div>Its safe to assume that both the host and t=
he USRP are fine with the same uhd version, correct?<br></div><div><br></div=
><div>all the best,</div><div>Pavlos.<br></div><div><br></div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Jul 16, 2020 at 8:57 AM Pavlos Basaras &lt;<a href=3D"mailto:pbasara=
s@gmail.com">pbasaras@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></di=
v><div>in case it would help i am also attaching the dmesg output from the u=
srp.</div><div><br></div><div>best,</div><div>Pavlos.<br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Jul 15, 2020 at 5:14 PM Pavlos Basaras &lt;<a href=3D"mailto:pbasar=
as@gmail.com" target=3D"_blank">pbasaras@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,=
</div><div><br></div><div>that would be great!</div><div><br></div><div>chee=
rs,</div><div>Pavlos.<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jul 15, 2020 at 5:07 PM Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 07/15/2020 10:02 AM, Pavlos Basaras wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; thank you very much for your prompt reply.<br>
&gt;<br>
&gt; i copied the .mender file by using the "scp" command.<br>
&gt; Yes, i am running the command on the USRP.<br>
&gt;<br>
&gt; I am not sure if this is a problem but --initially when i created the <=
br>
&gt; .mender file, the host was running the UHD 3.14.0.0 and the USRP had <b=
r>
&gt; 3.14.1.0. This is when the problem appeared first.<br>
&gt; Then i changed the uhd to 3.14.1.0 on the host to match exactly the <br=
>
&gt; UHD on the usrp, but the error still persists (or course i deleted the <=
br>
&gt; old file from the usrp).<br>
&gt;<br>
&gt; any ideas?<br>
&gt;<br>
&gt; best,<br>
&gt; P.<br>
&gt;<br>
I'll have to bug some R&amp;D people and get back to you.<br>
<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-7087F49D-7741-4176-A3F2-E6CAEC4FDED5--


--===============7066517170380478542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7066517170380478542==--

