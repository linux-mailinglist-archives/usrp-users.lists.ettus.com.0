Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F4A60AE8B
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 17:07:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21CB3383EB7
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 11:07:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666624068; bh=xBnn7lmE24S74JjGFcxxmT0UW0/P+DB7cVphFspTuLA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RZQqlsaCYMcXYET7CjNLQWSG+5RQ6H/113yV12Ia0Dbo4zCTgQajLs+XRzjRXv9/M
	 +jgUWEd0TRXI1eiTPyFx6f+pFFaORN6fr2ajMLorFw44equvij4XqVHXRhfjM9VtEP
	 EDA+uRvlEw5pm9NfuQlpFuSzWPVtxMhJCIhU/POz+1GAE9zEO8CoUg7mV7u8kcW8ej
	 xqKpI7AfKXveTcidYARV99k2MuJ+ID18JWoqBZZCzIMwAdLeshKR5G7cF3gI7hPymL
	 b85I3FWT23k+MMBmlbr9k9mZYTUGmZXXwygT+ZQG1Y4ilsUkPjbD3lLjwp052Tn2mE
	 /MXDq3zzk0MZg==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D164383D56
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 11:06:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WN8ab3Z/";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id ot12so5764320ejb.1
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 08:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rO0zVN/5iNmzpTWC8VOzA4bUj5WIgAZdar+ECRARqpo=;
        b=WN8ab3Z/PnzplVWvF8jKQv0v+097UauchyBChw2ymUgdG4DiPqYKJFy6uCvxAN/ps1
         /Gi7YEG2+awDb0y6WMYz7b7pZH3dyALqo/2XhjNsx96zu1VrrBc7/Q+GfCO7A9XxE/Uf
         loBmrPdI/2pW13fz/yRWd1dLxP6ZTcaa3MKnbJB/yh0buk+p/iy6k0j1Zb/VF1fhxsXL
         BwyNFuPGNF2AGKXlU/aaBZzTLBKGpDu3nyBfmPx2ULnywkLkCP8Pw5+Ens8nL2bScpCi
         m18BfSnDILi2kWxZNSvLrYEFm2uUNwnzZnUyevYoFGmfrZKnoP3/GhzlkDosd40VIdsC
         Gluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rO0zVN/5iNmzpTWC8VOzA4bUj5WIgAZdar+ECRARqpo=;
        b=pg4HbH9oTTC44B73sdUszxeIjPgruWeESg1qfl7KIGrpHwrweEKzqK0eES7VPcw3Bf
         cLD1xX3H2LJVVXm0/8jTmEDGJBAT7ECbXz+ate2GJUskpPfBMTdPMy6Aa+r/jsUdBFTR
         /vPHaOS8NgKnNOyUlCfrdDTZhzo6eebipq8lJdNiO1E/AH3ANkyqc4kZFEoRhuxOYi/+
         BOTgIYJuEE91/W8nrRL6RZzK2MqgV4kgpitJu8K7TDphpm4l0HDkNhXqcjZ3IwvZHq/x
         RdwZn3qY4qMlNFFOLLrwQAjxZAZxH3+Tf9GvCJ137YgEv/eOIlx9PMul4GNRkYkHeC1X
         DHXQ==
X-Gm-Message-State: ACrzQf3Ely+sAiXwAEOajCiZ88USvtsnMwZ2wdS67AQfDX+cJkIeoWjg
	twT2Idj4IrkXzJ/0lHVy8ByFnrqNROY+g3AudmEMwg==
X-Google-Smtp-Source: AMsMyM5cHQcrqhRd+zDz3rANgk7Chg97m//8+1nAF8ZVzQaXVqiT18FJSirkuP3/Qc4oiFO6LS/JfhdTJqDCEnxkrTQ=
X-Received: by 2002:a17:907:7639:b0:79f:d1dd:2f86 with SMTP id
 jy25-20020a170907763900b0079fd1dd2f86mr11968340ejc.586.1666623998836; Mon, 24
 Oct 2022 08:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
 <375f87d6-a523-7410-88ec-7bff37c7cb5c@gmail.com> <CAKNV16VkR3v3kNhE_YQqW_Yjoh4ed-we41FSNPa=ESAKsJLCrg@mail.gmail.com>
In-Reply-To: <CAKNV16VkR3v3kNhE_YQqW_Yjoh4ed-we41FSNPa=ESAKsJLCrg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 24 Oct 2022 11:06:27 -0400
Message-ID: <CAB__hTSpzL+uoyfwn0j+wui4xE_8x14FO1=B2yYG3bBOWVza-g@mail.gmail.com>
To: EmPa Kro <m10502215@gmail.com>
Message-ID-Hash: RKD7XPIXCA4L43I6ODNXDQKXNK6ZMKTA
X-Message-ID-Hash: RKD7XPIXCA4L43I6ODNXDQKXNK6ZMKTA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to use command replace hardware-reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RKD7XPIXCA4L43I6ODNXDQKXNK6ZMKTA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2657273915737896933=="

--===============2657273915737896933==
Content-Type: multipart/alternative; boundary="0000000000006cf47105ebc923b7"

--0000000000006cf47105ebc923b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Not sure if this will help, but you might try all or part of the following:
overlay rm n310 && overlay add n310 && systemctl restart usrp-hwd

On Sun, Oct 23, 2022 at 1:48 PM EmPa Kro <m10502215@gmail.com> wrote:

> Dear Marcus,
>
> I use the devices in 5g.
> If the protocol handling too slow, then it will let N310 meet hardware
> real time.
> [Ex: Protocol must complete scheduling and encoding/decoding... in one
> slot.]
>
> Best Regards,
> Kenny
>
> Marcus D. Leech <patchvonbraun@gmail.com> =E6=96=BC 2022=E5=B9=B410=E6=9C=
=8824=E6=97=A5 =E9=80=B1=E4=B8=80 =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=93=
=EF=BC=9A
>
>> On 2022-10-23 12:58, EmPa Kro wrote:
>> > Dear USRP develop,
>> >
>> > Because I meet some of hardware real time issue.
>> > I must use my finger off/on power button.
>> > Are there any other ways to reboot?
>> >
>> > I have used software command to reboot, but it can't fix HRT issue.
>> > "ssh root@[N310_IP] \reboot"
>> >
>> > Best regards,
>> > Kenny
>> >
>> Can you expand on what you mean by "HRT issue"?
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006cf47105ebc923b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Not sure if this will help, but you might try all or part =
of the following:<div>overlay rm=C2=A0<span class=3D"gmail-il">n310</span>=
=C2=A0<span class=3D"gmail-il">&amp;&amp;</span>=C2=A0overlay add=C2=A0<spa=
n class=3D"gmail-il">n310</span>=C2=A0<span class=3D"gmail-il">&amp;&amp;</=
span>=C2=A0systemctl restart usrp-hwd<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 23, 2022 at 1:48=
 PM EmPa Kro &lt;<a href=3D"mailto:m10502215@gmail.com">m10502215@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Dear Marcus,<div><br></div><div>I use the devices in 5g.</=
div><div>If the protocol handling too slow, then it will let N310 meet hard=
ware real time.</div><div>[Ex: Protocol must complete scheduling and encodi=
ng/decoding... in one slot.]</div><div><br></div><div>Best Regards,</div><d=
iv>Kenny</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; =E6=96=BC 2022=E5=B9=
=B410=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=B8=80 =E5=87=8C=E6=99=A81:04=E5=AF=
=AB=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On 2022-10-23 12:58, EmPa Kro wrote:<br>
&gt; Dear USRP develop,<br>
&gt;<br>
&gt; Because I meet some of hardware real time issue.<br>
&gt; I must use my finger off/on power button.<br>
&gt; Are there any other ways to reboot?<br>
&gt;<br>
&gt; I have used software command to reboot, but it can&#39;t fix HRT issue=
.<br>
&gt; &quot;ssh root@[N310_IP] \reboot&quot;<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Kenny<br>
&gt;<br>
Can you expand on what you mean by &quot;HRT issue&quot;?<br>
<br>
<br>
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
</blockquote></div>

--0000000000006cf47105ebc923b7--

--===============2657273915737896933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2657273915737896933==--
