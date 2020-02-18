Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29004162A3C
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 17:18:47 +0100 (CET)
Received: from [::1] (port=35958 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j45a9-0002UE-Mv; Tue, 18 Feb 2020 11:18:45 -0500
Received: from mail-lj1-f178.google.com ([209.85.208.178]:44400)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1j45a5-00022I-LC
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 11:18:41 -0500
Received: by mail-lj1-f178.google.com with SMTP id q8so23579024ljj.11
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 08:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QtfguHRGBQgtEnUzf76NuypUjTTFRkMtrsd+6gAeOjQ=;
 b=dm/8LrTinrwcWCboCYB56VHyHOhmPZdYI9vCvN4RF3N9ziKRXS6HXrayhSP5GKZ6YO
 tZpu0hvy9Nh6sRrCAWTUBee3+jEUTwLjrIlUZZp/9+jLUGfji6yqDupjMbSGbaDnbEq1
 ojjP2NU2+7XG0pdo77tnb3DuxSa+Bq9NsqrlXv/cz/AZfpqCtJ6agf4ivlLi056UpcIS
 nKpHrI9F5PwJOdA/1QxkN+Ck82I7prfVV+AbaYTJjY04CfmYcOZv+YncDEPZ+CkaGEii
 0Plz8OWNwQ09rBhMjrjl77MAGZ/CRlboMHaWhHgZ1togKBE6hOTU2YyfWdtmtXfADiUO
 5pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QtfguHRGBQgtEnUzf76NuypUjTTFRkMtrsd+6gAeOjQ=;
 b=A/lJWNtfXE4BkgUZi+i1qvXqA5MEVOCLLOp+EwN0+8iKII/a9icwDQVtfdUag2rjL5
 4XyUfWlaoFOU2qPlZm/Tp+XL+LIhwHlqzYl7xXQqW5H79e1iQYtkBMGuIfwkNW4Fpmh3
 mJ+Ak9r6iFphZejZH8ALFXTnQNx5jOIziX34Ryitw1L19g/HcoJIFNT9/HqnwJhxOoYU
 faO6XF1XWSF1K8yi/yMmIEDOowtV/I88KKez4O0/IS0vJrxOG5fy8hjshmt3DncC6fF4
 leF+EPVz2QMW1PuI4WyiicygWHmN8OlfIjZkMdTOJ6FCe2pw4PMKxNW49SX1xztyv0yF
 82GQ==
X-Gm-Message-State: APjAAAXIj2+lessWW6atQYY48/n0BFmhXrGpeVxK0G2O0W21pmGITYZr
 d9t6EsmLTzSn44PYsM8H34cCQWuathH58y3BJyHMCARl
X-Google-Smtp-Source: APXvYqy2f+fwjoEuxEbvDYtPNnP0Vhe6WKFUltWzbs1UwVAr4DEiexCNvfFydnWLMzCYaio+N7fcEc+YvuYg7Lhkkuw=
X-Received: by 2002:a2e:9841:: with SMTP id e1mr12988141ljj.23.1582042680163; 
 Tue, 18 Feb 2020 08:18:00 -0800 (PST)
MIME-Version: 1.0
References: <920c3ec0-af6b-8585-a2bc-84e35450e085@upc.edu>
 <CAB__hTS2to9GJraPTx=krJzWu7hnv0dyX7rmuJjq7cut+_wAyw@mail.gmail.com>
In-Reply-To: <CAB__hTS2to9GJraPTx=krJzWu7hnv0dyX7rmuJjq7cut+_wAyw@mail.gmail.com>
Date: Tue, 18 Feb 2020 10:17:49 -0600
Message-ID: <CANf970YCf2scR63XMV-m6-nhcN4o_q-qiRGqSB6VjTNJ4mTDpg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Using DDC/DUC frequency in RFNoC
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: Adria <adria.amezaga@upc.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0302800943117483366=="
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

--===============0302800943117483366==
Content-Type: multipart/alternative; boundary="000000000000f88dbc059edc037b"

--000000000000f88dbc059edc037b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'll also add in that you need to set the frequency tuning policies to
POLICY_MANUAL before you can change rf_freq or dsp_freq independently.

Sam Reiter

On Mon, Feb 17, 2020 at 12:13 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Adri=C3=A0,
> If you are trying to use 'timed' commands, perhaps the problem is the
> signal generator block.  If I remember correctly, this block does not
> support timed commands.  This means that the resulting data stream will n=
ot
> include a time stamp and thus if you try to tune the DDC or DUC using a
> timed command, it will delay the command until the appropriate time stamp
> is seen (which will never occur in your case).  If you are not using time=
d
> commands, then just ignore this....
> Rob
>
> On Thu, Feb 13, 2020 at 6:40 PM Adria via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear all,
>>
>> I'm trying to tune the output and input frequency of an X310 + UBX-160.
>> I instantiate the radio block and the DDC and DUC blocks and connect the=
m.
>>
>> The TX chain is like this: [Signal generator] -> [DUC] -> [Radio block].
>>
>> My intention is to use the DUC only for frequency tuning, since I set
>> the UBX synthesizers to Integer-N mode.
>>
>> The fact is that configure the DUC frequency by setting the "freq"
>> parameter using the set_param call has no effect.
>>
>> Trying to set the DUC frequency using tune_request through the dsp_freq
>> parameter has no effect either.
>>
>> My other question is about the Integer-N tuning. Is there a way to set
>> the integer mode without using the tune_request object? I expected to be
>> able to do that using radio_ctrl.
>>
>> I am sure I'm missing something but I don't know where else to look, so
>> any help would be appreciated.
>>
>> I'm using UHD 3.14.
>>
>> Thanks!
>>
>>
>> Adri=C3=A0 Am=C3=A9zaga
>>
>>
>>
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

--000000000000f88dbc059edc037b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ll also add in that you need to set the frequen=
cy tuning policies to POLICY_MANUAL before you can change rf_freq or dsp_fr=
eq independently.</div><div><br></div><div><div><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr">Sam Reiter</div></div></div></div></div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 17=
, 2020 at 12:13 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr">Hi Adri=C3=A0,<div>If you are trying to use &#39;timed&#39; commands,=
 perhaps the problem is the signal generator block.=C2=A0 If I remember cor=
rectly, this block does not support timed commands.=C2=A0 This means that t=
he resulting data stream will not include a time stamp=C2=A0and thus if you=
 try to tune the DDC or DUC using a timed command, it will delay the comman=
d until the appropriate time stamp is seen (which will never occur in your =
case).=C2=A0 If you are not using timed commands, then just ignore this....=
</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Feb 13, 2020 at 6:40 PM Adria via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Dear all,<br>
<br>
I&#39;m trying to tune the output and input frequency of an X310 + UBX-160.=
 <br>
I instantiate the radio block and the DDC and DUC blocks and connect them.<=
br>
<br>
The TX chain is like this: [Signal generator] -&gt; [DUC] -&gt; [Radio bloc=
k].<br>
<br>
My intention is to use the DUC only for frequency tuning, since I set <br>
the UBX synthesizers to Integer-N mode.<br>
<br>
The fact is that configure the DUC frequency by setting the &quot;freq&quot=
; <br>
parameter using the set_param call has no effect.<br>
<br>
Trying to set the DUC frequency using tune_request through the dsp_freq <br=
>
parameter has no effect either.<br>
<br>
My other question is about the Integer-N tuning. Is there a way to set <br>
the integer mode without using the tune_request object? I expected to be <b=
r>
able to do that using radio_ctrl.<br>
<br>
I am sure I&#39;m missing something but I don&#39;t know where else to look=
, so <br>
any help would be appreciated.<br>
<br>
I&#39;m using UHD 3.14.<br>
<br>
Thanks!<br>
<br>
<br>
Adri=C3=A0 Am=C3=A9zaga<br>
<br>
<br>
<br>
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

--000000000000f88dbc059edc037b--


--===============0302800943117483366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0302800943117483366==--

