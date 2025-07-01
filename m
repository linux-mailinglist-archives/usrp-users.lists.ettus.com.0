Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEA8AEFB3D
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 15:55:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C270B386324
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 09:55:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751378114; bh=NnCRdvT8EpTwBjwffbvaplAGrdLX5EVP+cjDDY3IJnY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AbgJCDpdGbg7lzy/tkX6hOv2W9CO9N9P9O00wV9NIvJebULdts45bRDJb7VNC0dOo
	 X7ssSAnvzQl1NZdYFXaiak+CGvkHvOq98WxYzjxcpYKOqL+hDrpecZypRUNX0XxJSk
	 ps/KefqjXyrlecDEakkY3qX796gXktQ01D7bEMu+lrldVn6vq0ux9KtiLPk6Yt8iFj
	 CHZfZJVth34eWdbi7b1zAC1vB6UqFDbQsEHYf2qI92sL/sr1iNLDR94GbJyLGOQcrL
	 kZaFx7du3sOGVCxsJPI8VRgOXFLhTNIi6mhWERPs9p0+yNkuAmqv5VphrTWGqYFDx8
	 k7LOLgSpFAAqg==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D8DB385896
	for <usrp-users@lists.ettus.com>; Tue,  1 Jul 2025 09:55:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rv1Vh4u2";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae360b6249fso706343366b.1
        for <usrp-users@lists.ettus.com>; Tue, 01 Jul 2025 06:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751378100; x=1751982900; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GQ7dVFnjtKH3MuLNChBQVuTy2qthhcYhOP+5kmkkUwg=;
        b=rv1Vh4u2hOyJNMUpGBhFGiq2lmFeGdgGPiqLPMlFNuBVVXIIcZSOY99aQefHkF+fgn
         rbMcz7thbjK5ds+j7FMtkSaR7HzCy2HMJIenIlmV8GrHkVJJ1Jq0YmGDbiguajhPp9Op
         tFiVvcOBiWgYnlMdWkXSZQ6Jc7dSk5tTQgcDkkUJjmpT8CGiuREcPRlfec6TlhM03T+R
         uvGIeCC9Ypjcvy9WurEhWYGUn/U65fFAJmykYyJ/nqgsd4XwuzThl4AACMSewqP+7SMm
         YvB3ckb3UV+KcyK7xtbGdqOTratsj+CSHZ6nQSs+Jbgm92mm2WZzY4qbAj6DPv7YS5Kl
         13oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751378100; x=1751982900;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GQ7dVFnjtKH3MuLNChBQVuTy2qthhcYhOP+5kmkkUwg=;
        b=dPGm+xk6owLlct8Yj5vXbH1sf6ppWsw/UQJ5oIsQ8O1Dz0uDB2zKcl/5M+ErbQ0nS/
         vmW/gGgKnhpQnIR2/oypAJII8VUpNOaHeS3rpgAb7o1y/UBrQNMn8M+z4C8pDI60r71Y
         c0uHp/Ica169mXQmtM2z2vkybfVSB5751dwo4hV2gZ1FV6GfUixO+OwfL9Z7DC4uvESI
         Cu0hRcLYg2swxxzGfgFjwzdzPZfSYjADba6NvaVbP3GcSsRLs/jGS3ABRyDUNxSyMFmP
         iYpxMUGSeQ2RaXxXFMXmk9fOc0vSn52asGRqxEpl14LgiLvNHcr0h7g9kd3xsXK3GApB
         XZtA==
X-Gm-Message-State: AOJu0YzXrCUYesTeuyK2CUZ9/64gdQ5LY24WJATAtcY34gR08TZJf8CB
	soY5cSb+xcKQqYs6RSxnHmMtnbDtJ0iD5/LMrvScx9JEphaIyyMpOjRXu7/cWhENlsYSKmy+j4u
	ZrM6kJDh+RUV5Z/NQUrNNfwOJ7T3oUde8/faSDpeaNmlhC5TNxQh/1YJwAg==
X-Gm-Gg: ASbGncvUv7Pgijr8UuWcYs/+aRqJLj5XbY5Z4GNPmAu6m1meNh3ZVIQAZ6oia5i49R0
	JOViT87Gfuc85TTgqTgMIONKI9LAAsOsDOH9c8kN9I7K80iF2iK6j5zE8IRSfHltmdLZgiJAkQo
	B8BIMePsmU6R5R1VgthGdPQtJyuv1Vq/9FEd+coPdS0IwijQyOUcSwF9rF98RPcTPKYWMUJYTvI
	AA=
X-Google-Smtp-Source: AGHT+IG3W2syCGizlE8BtQmEh7X7HcvpHd4uQ6l7cJzsHQnXBaMnzg9zvLi49pRz2BtpWiLNhSR7DZmnJlWQ9prQ2FM=
X-Received: by 2002:a17:907:7296:b0:ae0:b46b:decd with SMTP id
 a640c23a62f3a-ae3500f6ed5mr1591120766b.31.1751378099784; Tue, 01 Jul 2025
 06:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK7pXB_g8rq3Cd-GAP0bRtc09-+c75xGqdZ3czMADBYorw@mail.gmail.com>
 <MW6PR10MB755186E49D5FA339352E51A99F8AA@MW6PR10MB7551.namprd10.prod.outlook.com>
 <CAEXYVK5A0O3v0qrOFOmcKc=xxJE4AOuc1Nht=5Uu_gkFKZszLg@mail.gmail.com>
In-Reply-To: <CAEXYVK5A0O3v0qrOFOmcKc=xxJE4AOuc1Nht=5Uu_gkFKZszLg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 1 Jul 2025 15:54:48 +0200
X-Gm-Features: Ac12FXyLEkYUaxnGbtTSBdSiWwDByhD-7qsqFeZLNLyLDw29VHqjtzxpCOfZZw4
Message-ID: <CAFOi1A5e8WNikWHQ3E=GvJrj_SZ7t61GcgeDU3RicXzsBrS_iQ@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 2RFXCPVNZV4VAVY2RVCCYHZ6CSAZEVMG
X-Message-ID-Hash: 2RFXCPVNZV4VAVY2RVCCYHZ6CSAZEVMG
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] RFNoC Payload Mismatch
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RFXCPVNZV4VAVY2RVCCYHZ6CSAZEVMG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5753943795379852256=="

--===============5753943795379852256==
Content-Type: multipart/alternative; boundary="0000000000008166850638de7d8a"

--0000000000008166850638de7d8a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We do actually communicate the data format to the SEP, and also provide an
option to swap byte order if the host and device endianness differ.
However, we expect that to be a rare occurrence because most archs are
little endian these days, and so is the FPGA. That means the lowest byte in
the payload is also the least significant byte of the first sample.

However, you can check if something's going wrong (are we swapping bytes?
Is the type correct?):

https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/mgmt_portal=
.cpp#L415-L457

--M


On Fri, May 9, 2025 at 2:29=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> Hey Aki,
>
> Correct regarding the X440. My block expects sc8 coming in through CHDR,
> but I made no other changes to the RFNoC core or to UHD itself regarding
> the data. Is this something I need to do?
>
> I tried finding all the places where ITEM_W was defined anywhere outside
> of my block but this still occurs.
>
> For the CHDR format, the lowest byte of the payload (i.e. the first byte
> of the payload as seen in wireshark) should also be the lowest byte in th=
e
> payload as presented to my block, correct?
>
> Thanks,
> Brian
>
>
> On Fri, May 9, 2025 at 12:21=E2=80=AFAM Tomita, Aki <Aki.Tomita@emerson.c=
om>
> wrote:
>
>> Hi Brian,
>>
>> Just for background information, this is for the X440, like in your othe=
r
>> posts? Are you adding in the sc8 support in your custom image? Out of th=
e
>> box, an sc8 for otw isn't supported for that device. There is FPGA code =
to
>> handle sc8, like the b2xx, but they're operating on the Legacy CHDR form=
at.
>>
>> Aki
>> ------------------------------
>> *From:* Brian Padalino <bpadalino@gmail.com>
>> *Sent:* Wednesday, May 7, 2025 8:04 PM
>> *To:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* [EXTERNAL] [USRP-users] RFNoC Payload Mismatch
>>
>> I've got a custom image with CHDR_W=3D512 and I am using sc8 for both th=
e
>> otw and cpu formats. In my FPGA simulation, I set the ChdrData with 512 =
for
>> the CHDR_W and 16 for the ITEM_W. I am loading a counting pattern with t=
he
>> real part being incremented every sample, and the imaginary incrementing
>> every 128 samples. In simulation, the 512-bits coming out at the end are=
:
>>
>>     0x1f001e001d001c00 ... 01000000
>>
>> In wireshark captures, the Payload shows this counting pattern going up:
>> 00 00 00 01 00 02 00 03 ... as I would also expect.
>>
>> The ILA shows me a strange swizzle going on the 512-bit bus:
>>
>>   0x010000000300020005000400 ... 1f001e00
>>
>> It appears like it thinks data items might be 32-bits wide (16-bit I and
>> 16-bit Q) and it's also backwards on the bus (first sample in the ethern=
et
>> packet is the upper most sample in the CHDR bus). I am using the
>> chdr_to_axis_pyld_ctxt with CHDR_W set to 512, ITEM_W set to 16, but the
>> NIPC is just 512/16 so it's the full 512-in, 512-out - no width translat=
ion
>> there. Also note that the context is perfect - it's just the payload tha=
t
>> is strange.
>>
>> For the life of me, I can't see where the misconfiguration might be
>> occurring. As I said, my simulation with the testbench for my block push=
es
>> a counting pattern to a queue of item_t, then I use item_to_chdr() to pa=
ck
>> it and give it to the CHDR BFM. I'd really like to be able to simulate w=
hat
>> might be going on but I am hesitant to try and include the ethernet
>> transport adapter into my block testbench.
>>
>> Any pointers on what this might be? Does the wireshark ethernet packet
>> description sound correct to you for the payload? The lowest bytes in th=
e
>> ethernet packet should show up as the lowest bytes on the payload bus?
>>
>> Thanks,
>> Brian
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008166850638de7d8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We do actually communicate the data format=C2=A0to th=
e SEP, and also provide an option to swap byte order if the host and device=
 endianness differ. However, we expect that to be a rare occurrence because=
 most archs are little endian these days, and so is the FPGA. That means th=
e lowest byte in the payload is also the least significant byte of the firs=
t sample.</div><div><br></div><div>However, you can check if something&#39;=
s going wrong (are we swapping bytes? Is the type correct?):=C2=A0</div><di=
v><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/maste=
r/host/lib/rfnoc/mgmt_portal.cpp#L415-L457">https://github.com/EttusResearc=
h/uhd/blob/master/host/lib/rfnoc/mgmt_portal.cpp#L415-L457</a></div><div><b=
r></div><div>--M</div><div><br></div></div><br><div class=3D"gmail_quote gm=
ail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 9, 2=
025 at 2:29=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail=
.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hey Aki,<div><br></div><div>Corre=
ct regarding the X440. My block expects sc8 coming in through CHDR, but I m=
ade no other changes to the RFNoC core or to UHD itself regarding the data.=
 Is this something I need to do?</div><div><br></div><div>I tried finding a=
ll the places where ITEM_W was defined anywhere=C2=A0outside of my block bu=
t this still occurs.</div><div><br></div><div>For the CHDR format, the lowe=
st byte of the payload (i.e. the first byte of the payload as seen in wires=
hark) should also be the lowest byte in the payload as presented to my bloc=
k, correct?</div><div><br></div><div>Thanks,<br>Brian</div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, May 9, 2025 at 12:21=E2=80=AFAM Tomita, Aki &lt;<a href=3D"mailto:Ak=
i.Tomita@emerson.com" target=3D"_blank">Aki.Tomita@emerson.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi Brian,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Just for background information, this is for the X440, like in your other p=
osts? Are you adding in the sc8 support in your custom image? Out of the bo=
x, an sc8 for otw isn&#39;t supported for that device. There is FPGA code t=
o handle sc8, like the b2xx, but they&#39;re
 operating on the Legacy CHDR format.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Aki</div>
<div id=3D"m_2567427650277652283m_-560671796755374757appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2567427650277652283m_-560671796755374757divRplyFwdMsg" dir=3D"=
ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#=
000000"><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.c=
om" target=3D"_blank">bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, May 7, 2025 8:04 PM<br>
<b>To:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] RFNoC Payload Mismatch</font>
<div>=C2=A0</div>
</div>

<div>
<div style=3D"font-size:1px;color:rgb(255,255,255);line-height:1px;height:0=
px;max-height:0px;opacity:0;overflow:hidden;display:none">
</div>
<div style=3D"font-size:1px;color:rgb(255,255,255);line-height:1px;max-heig=
ht:0px;opacity:0;overflow:hidden;display:none">
</div>
<div dir=3D"ltr">I&#39;ve got a custom image with CHDR_W=3D512 and I am usi=
ng sc8 for both the otw and cpu formats. In my FPGA simulation, I set the C=
hdrData with 512 for the CHDR_W and 16 for the ITEM_W. I am loading a count=
ing pattern with the real part being incremented
 every sample, and the imaginary incrementing every 128 samples. In simulat=
ion, the 512-bits coming out at the end are:
<div><br>
</div>
<div>=C2=A0 =C2=A0 0x1f001e001d001c00 ... 01000000</div>
<div><br>
</div>
<div>In wireshark captures, the Payload shows this counting pattern going u=
p: 00 00 00 01 00 02 00 03 ... as I would also expect.</div>
<div><br>
</div>
<div>The ILA shows me a strange swizzle going on the 512-bit bus:</div>
<div><br>
</div>
<div>=C2=A0 0x010000000300020005000400 ... 1f001e00</div>
<div><br>
</div>
<div>It appears like it thinks data items might be 32-bits wide (16-bit I a=
nd 16-bit Q) and it&#39;s also backwards on the bus (first sample in the et=
hernet packet is the upper most sample in the CHDR bus). I am using the chd=
r_to_axis_pyld_ctxt with CHDR_W set
 to 512, ITEM_W set to 16, but the NIPC is just 512/16 so it&#39;s the full=
 512-in, 512-out - no width translation there. Also note that the context i=
s perfect - it&#39;s just the payload that is strange.</div>
<div><br>
</div>
<div>For the life of me, I can&#39;t see where the misconfiguration might b=
e occurring. As I said, my simulation with the testbench for my block pushe=
s a counting pattern to a queue of item_t, then I use item_to_chdr() to pac=
k it and give it to the CHDR BFM. I&#39;d
 really like to be able to simulate what might be going on but I am hesitan=
t to try and include the ethernet transport adapter into my block testbench=
.</div>
<div><br>
</div>
<div>Any pointers on what this might be? Does the wireshark ethernet packet=
 description sound correct to you for the payload? The lowest bytes in the =
ethernet packet should show up as the lowest bytes on the payload bus?</div=
>
<div><br>
</div>
<div>Thanks,</div>
<div>Brian</div>
</div>
</div>
</div>

</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008166850638de7d8a--

--===============5753943795379852256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5753943795379852256==--
