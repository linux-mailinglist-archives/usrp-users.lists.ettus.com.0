Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E83164E50F
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 01:12:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88E6F38454A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 19:12:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671149565; bh=hRGcDTpaVvjlF8qmFu1eIPNnpBxId6Jlhs67/Tp63h8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qj/R7B+7e6A6AyTt/UiwyaVkbyKg6xM6IPgIRM8S3AvqEByCFUF2hgU2mcvxLA+ng
	 wKOzOoQBsPtQBBeVhNgw80/pYhBqmsWiza87CfZpiKewBbbQM0/8GSluUAeV3BRckd
	 YVWYjnDE3o6JyRkOPSz4J3K8Y+1ZolbF37VroW4BXj8jjS8jG9UQADYJDNyFxSpxiI
	 p1JsizNMInFoVBlPRzsApRPNWa45kfqbffO4kg4fTRQu8c4a7SoSHQSTqmfsu8Yomt
	 wz9I8APg4+k16XdKkCMLLzcYnudv6FDqmBNeapkH70vISCzjVFuh7jfl+Vy1pg6BUY
	 E5Xqp+e/vdwBA==
Received: from mta29.mta.hdems.com (mta29.mta.hdems.com [52.198.247.252])
	by mm2.emwd.com (Postfix) with ESMTPS id C5BE3384529
	for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 19:12:37 -0500 (EST)
Received: from mo.hdems.com (unknown [10.5.20.30])
	by mta29.mta.hdems.com ('HDEMS') with ESMTPSA id 4NY8gS1GBvzlfbk9
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 00:12:36 +0000 (UTC)
X-HDEMS-MO-TENANT: kke.co.jp
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com. [209.85.219.198])
	by gwsmtp.prod.mo.hdems.com with ESMTPS id gwsmtpd-trans-27436de3-9281-4997-a945-e6625e7b6d8d
	for <usrp-users@lists.ettus.com>;
	Fri, 16 Dec 2022 00:12:25 +0000
Received: by mail-yb1-f198.google.com with SMTP id b4-20020a253404000000b006fad1bb09f4so765769yba.1
        for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 16:12:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wuD7K4NkUiNc32i+NO3GEhxjpflkjMNfQgwZO6UOoWk=;
        b=Qk9cCfsbRDSUOt1hAI8Xm1ub3y+aZwpuzcHIjqCltZzGIKlJoPtTnHdxKRD6LJkwYD
         5oXlkhlSqzOm4Yo3PRkE241+2lyzSZ1dLX4ZLBZoUgi8XQus2XaB83u/U3zKQO0ClDIa
         u4scYdRmxN1WPlEciU6/bcg6lNzMNuDqHoGO+tHENO1/s9YWLO2rjtSQTjrW6hFqlTc8
         GvpyV3USJSCP+dM1jqwMPyundNOW+AVxPfCa+JLb/sZvnZw1O1/IvplWd3iIF204E1Ls
         TJAqL7alOKEAEjAeNA3BkVBmr+t+kxgoDXzTHKXDY0+66SLrZFN5rifkIXbeRL6gxzK+
         wNFA==
X-Gm-Message-State: ANoB5pnKke+nOR76mibyfAnuo/NzjAnIAj+oa0j8Za4Ez4d4B8G3Ev4+
	yhHO/fZAoxdhao032ELbmEtijKr0G0/bXATbayL9jMzTdrb5xAAcdz36eN3SjUg2tobEeHsC2ya
	nzgiHZhPIiKpqbAxHY6/nqiv6hpjovthq8KGFrWmYc50atTF+
X-Received: by 2002:a0d:d287:0:b0:3c5:cf53:ac0f with SMTP id u129-20020a0dd287000000b003c5cf53ac0fmr2084403ywd.191.1671149544603;
        Thu, 15 Dec 2022 16:12:24 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6nhzLVNVruJJAjXXsnGR1lBX1uhv3wGbLMuWv20LBVhfgWYzZAtCmlKQbNIQfgygOB+B7qA4JUPrpWQUj22nQ=
X-Received: by 2002:a0d:d287:0:b0:3c5:cf53:ac0f with SMTP id
 u129-20020a0dd287000000b003c5cf53ac0fmr2084399ywd.191.1671149544243; Thu, 15
 Dec 2022 16:12:24 -0800 (PST)
MIME-Version: 1.0
References: <CAGHsMd_-K-COEnELpOJpHoDU9m9itjkDAS1Jp3iuLgJN_DeWDA@mail.gmail.com>
 <b4fcb4c3-c6ac-1e8f-fe0b-4eed403c00c5@gmail.com> <CAGHsMd9g2xUzfPk9GTZkABzViFknNgF=R6h7wCYKsQJK__TLYQ@mail.gmail.com>
In-Reply-To: <CAGHsMd9g2xUzfPk9GTZkABzViFknNgF=R6h7wCYKsQJK__TLYQ@mail.gmail.com>
From: =?UTF-8?B?6JaE55Sw5oKg5qi5?= <yuki-susukida@kke.co.jp>
Date: Fri, 16 Dec 2022 09:12:15 +0900
Message-ID: <CAGHsMd96d=32dxoxk27f5K7kjf+-C9LsT3RNkC41JwkXHspdnA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 47CWKYT5OKR7PKOAYQNLWZZDW5LP3E6S
X-Message-ID-Hash: 47CWKYT5OKR7PKOAYQNLWZZDW5LP3E6S
X-MailFrom: yuki-susukida@kke.co.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accidental Power-Down During Flashing of X310 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47CWKYT5OKR7PKOAYQNLWZZDW5LP3E6S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4872890395168041746=="

--===============4872890395168041746==
Content-Type: multipart/alternative; boundary="000000000000f3b55105efe6d2b6"

--000000000000f3b55105efe6d2b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

I have completed the restoration of X310 with the help of the page you
shared.
Thank you very much for your help.

Yuki Susukida

2022=E5=B9=B412=E6=9C=8815=E6=97=A5(=E6=9C=A8) 13:07 =E8=96=84=E7=94=B0=E6=
=82=A0=E6=A8=B9 <yuki-susukida@kke.co.jp>:

> Hello Marcus,
>
> Thanks for your prompt response.
> Refer to the "X300/X310 Device Recovery" page to attempt recovery.
>
> Yuki Susukida
>
> 2022=E5=B9=B412=E6=9C=8815=E6=97=A5(=E6=9C=A8) 11:55 Marcus D. Leech <pat=
chvonbraun@gmail.com>:
>
>> On 14/12/2022 21:37, =E8=96=84=E7=94=B0=E6=82=A0=E6=A8=B9 wrote:
>> > Hello everyone,
>> >
>> > I accidentally turned off USRP X310 while updating the FPGA image of
>> > the USRP X310 using the procedure in the link below.
>> > After that, when I turned on the X310, there was no response to the
>> > "usrp_find_devices" command, and the network interface on the PC side
>> > could not recognize the X310.
>> > How can I solve this problem?
>> >
>> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started_=
fpga_update
>> >
>> > Thank you in advance.
>> >
>> > Yuki Susukida
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> The procedure is described here:
>>
>> https://kb.ettus.com/X300/X310_Device_Recovery
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f3b55105efe6d2b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>He=
llo Marcus,<br><br>I have completed the restoration of X310 with the help o=
f the page you shared.=C2=A0</div><div>Thank you very much for your help.=
=C2=A0<br></div></div></div></div></div></div></div></div></div></div></div=
></div><div><br></div>Yuki Susukida<div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">2022=E5=B9=B412=E6=9C=8815=E6=97=A5(=E6=
=9C=A8) 13:07 =E8=96=84=E7=94=B0=E6=82=A0=E6=A8=B9 &lt;<a href=3D"mailto:yu=
ki-susukida@kke.co.jp">yuki-susukida@kke.co.jp</a>&gt;:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><p style=3D"box-si=
zing:border-box;margin-top:0px;margin-bottom:1rem;color:rgb(72,70,91);font-=
family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;H=
elvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;=
Noto Color Emoji&quot;;font-size:15px">Hello Marcus,<br><br>Thanks for your=
 prompt response.<br>Refer to the &quot;X300/X310 Device Recovery&quot; pag=
e to attempt recovery.<br></p><p style=3D"box-sizing:border-box;margin-top:=
0px;margin-bottom:1rem;color:rgb(72,70,91);font-family:-apple-system,BlinkM=
acSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&=
quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe U=
I Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font=
-size:15px">Yuki Susukida</p></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">2022=E5=B9=B412=E6=9C=8815=E6=97=A5(=E6=9C=A8=
) 11:55 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targ=
et=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 14/12/2022 21:37, =E8=96=84=E7=94=B0=E6=
=82=A0=E6=A8=B9 wrote:<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I accidentally turned off USRP X310 while updating the FPGA image of <=
br>
&gt; the USRP X310 using the procedure in the link below.<br>
&gt; After that, when I turned on the X310, there was no response to the <b=
r>
&gt; &quot;usrp_find_devices&quot; command, and the network interface on th=
e PC side <br>
&gt; could not recognize the X310.<br>
&gt; How can I solve this problem?<br>
&gt; <a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_get=
ting_started_fpga_update" rel=3D"noreferrer" target=3D"_blank">https://file=
s.ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started_fpga_update</a>=
<br>
&gt;<br>
&gt; Thank you in advance.<br>
&gt;<br>
&gt; Yuki Susukida<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
The procedure is described here:<br>
<br>
<a href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" rel=3D"noreferre=
r" target=3D"_blank">https://kb.ettus.com/X300/X310_Device_Recovery</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div></div>

--000000000000f3b55105efe6d2b6--

--===============4872890395168041746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4872890395168041746==--
