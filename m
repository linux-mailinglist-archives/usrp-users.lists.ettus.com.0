Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0354B8263F
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 22:44:42 +0200 (CEST)
Received: from [::1] (port=42028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hujqQ-0001e2-Uc; Mon, 05 Aug 2019 16:44:38 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:45776)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hujqO-0001Z8-0g
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 16:44:36 -0400
Received: by mail-ot1-f52.google.com with SMTP id x21so21608740otq.12
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 13:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sxeDronyEcbbTzIee8JgnkqdY4FvXx7C9QsTvMdzf+E=;
 b=jZnTOFfa115B+DXMLAp2nJozigsjGLEHe3UXySKqflZPDg9ADKc7CDmN3LLmAPxrBk
 y2UlXqprD+KI5p5524eapLWz4sdF4zbOXUKEylYivcZgpVGco7PTybgnQlYW6pgzkw2E
 jZ7EnITMbouJ8WbM+BcbQ2GWyo4V4eJmDKRfYRsB3UycSpL0fI2A9vtHFHtehklNXitL
 HL7MIJGVXuSN7C73uxuB9rwZSvVDZ7JiCILmW896U7q0/lD/ePY9VO+AldwL/xKm6c7G
 ii/XssLMRA69O8vcfry44JdTJufq/bGG30L8XeIswu+yOI+jl5ncb9rGOUvaIpsNtDJI
 0YAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sxeDronyEcbbTzIee8JgnkqdY4FvXx7C9QsTvMdzf+E=;
 b=pCyBFZgQmGGpYg5Nh42zKLyNuIOqCdUgTEiCmBS+BXGXNRFG+9KQpA7HxYZWy+de2U
 kLoFb4uGP1NDWF51XES4+dJFyJTjVjWurYc6c5bd2GfJnP4ZN11PlYe+i8TAnkMBfrVJ
 uuAzKseL6JEt6mL8ntHCcXgwC08Jl4cxBtMSNE81Un5FMDyMoZ9gP/DePC4H5Jp4x5pg
 IMUUDOlKi6G0TEV0MTD/insZruK/nN2cO9dtAaMBV3H4fQqHyBI+D04VXjO47E7et1vD
 6CV1kbixAEKvs4xkKlYV3cUMmL/neeJe45K6XCOgEuq9ELspUgUEHNZZ3MEVfqaBRvg/
 92qQ==
X-Gm-Message-State: APjAAAUO3/1Llzk531o3YHfN4BhSEdO9RQI5BWQZLrcxmaUVQIo9nYvH
 ItjaA6tKBGpyO3pw7SJ19AU3ga1kIiEvv7tNF8E=
X-Google-Smtp-Source: APXvYqxFKTbqH/HvnEvy0pz9Vohu0KtL95oqFNsmfSEPxSdk8iAxub6mKs07+QShyzvz60xsIBZSuBzdFRYzYDvm/RY=
X-Received: by 2002:a5d:8252:: with SMTP id n18mr15064541ioo.230.1565037835048; 
 Mon, 05 Aug 2019 13:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <9f5dbd7ab00f4be59f6ed8ad0de7da59@tudelft.nl>
 <9c8f200ed81542cea52e138e82c74002@tudelft.nl>
 <CA+JMMq8nDYpcTAyabu63jvG=_NwqD6oqsMBddRyTrJj9cgOGeQ@mail.gmail.com>
 <6f515697ddcd41718d14e5f8eea799c7@tudelft.nl>
In-Reply-To: <6f515697ddcd41718d14e5f8eea799c7@tudelft.nl>
Date: Mon, 5 Aug 2019 13:39:46 -0700
Message-ID: <CA+JMMq9m1K+LRK=xGDVv+nGTvmCBeTykE-bYC=3foQ2qPi7kqg@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5502984866134631161=="
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

--===============5502984866134631161==
Content-Type: multipart/alternative; boundary="00000000000037db6d058f64c425"

--00000000000037db6d058f64c425
Content-Type: text/plain; charset="UTF-8"

All synthesized clocks are synchronized to whatever reference is selected.

On Mon, Aug 5, 2019 at 1:03 PM Cherif Diouf <C.E.V.Diouf@tudelft.nl> wrote:

> Thanks Nick,
>
>
> That's fine as explanation.  I however need a HW clock synchronized to the
> 10 MHz external reference. I am using some local counters to run timely
> operations. If not using the 200 MHz clock Is it possible to synchronize
> the 214 MHz clock to the 10 MHz external reference.
>
>
> Best Regards
>
> Cherif
>
>
> ------------------------------
> *From:* Nick Foster <bistromath@gmail.com>
> *Sent:* Monday, August 5, 2019 6:33:37 PM
> *To:* Cherif Diouf
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
>
> The radio TX frontend backpressures upstream blocks. You don't have to
> worry about providing samples at the frontend rate. There is no reason to
> use a 200MHz clock in your block.
>
> Remember: if the frontend is operating at 200Msps, then the samples your
> block is producing must assume a 200Msps sample rate. It doesn't matter at
> all that the clock driving your block is 214MHz -- that only means that the
> logic is operating a bit faster.
>
> Nick
>
> On Mon, Aug 5, 2019 at 8:58 AM Cherif Diouf via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>>
>>
>>
>> ------------------------------
>>
>> Hello guys,
>>
>>
>>
>> I am working with the X310 USRP. I have developed customed RFNoC CEs
>> running at ce_clk which is no more 200 MHz but rather 214 MHz.
>>
>> So my blocks are providing samples to the RF frontends at 214 MSps. Is
>> that right?
>>
>> Then how the operation can be consistent when the sampling rate of the RF
>> frontends is still at 200MSps.
>>
>>
>> Is it possible to synchronize both the 214 MHz and the 200 MHz clocks to
>> the same 10 MHz external reference, or to  use the 200 MHz reference clock
>> as my HW blocks main clock?
>>
>>
>>
>>
>> Best Regards
>>
>> Cherif
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000037db6d058f64c425
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All synthesized clocks are synchronized to whatever refere=
nce is selected.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Aug 5, 2019 at 1:03 PM Cherif Diouf &lt;<a href=
=3D"mailto:C.E.V.Diouf@tudelft.nl">C.E.V.Diouf@tudelft.nl</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-6011160831851846257divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<div id=3D"gmail-m_-6011160831851846257divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emo=
ji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quo=
t;,EmojiSymbols">
<p>Thanks Nick,</p>
<p><br>
</p>
That&#39;s fine as explanation.=C2=A0 I however need a HW clock synchronize=
d to the 10 MHz external reference. I am using some local counters to run t=
imely operations. If not using the 200 MHz clock Is it possible to synchron=
ize the 214 MHz clock to the 10 MHz external
 reference.
<p><span><br>
</span></p>
<p><span>Best Regards</span></p>
<p><span>Cherif<br>
</span></p>
<p><span></span><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-6011160831851846257divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_b=
lank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Monday, August 5, 2019 6:33:37 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP =
X310</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>The radio TX frontend backpressures upstream blocks. You don&#39;t hav=
e to worry about providing samples at the frontend rate. There is no reason=
 to use a 200MHz clock in your block.</div>
<div><br>
</div>
<div>Remember: if the frontend is operating at 200Msps, then the samples yo=
ur block is producing must assume a 200Msps sample rate. It doesn&#39;t mat=
ter at all that the clock driving your block is 214MHz -- that only means t=
hat the logic is operating a bit faster.</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2019 at 8:58 AM Cherif=
 Diouf via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-6011160831851846257gmail-m_-6936411464282814038divtagde=
faultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-fam=
ily:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Em=
oji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&q=
uot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div>
<div>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
Hello guys,</p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
=C2=A0</p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">I am working with the X310 USRP. I have developed cust=
omed RFNoC CEs running at ce_clk which is no more 200 MHz but rather 214 MH=
z.
<br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">So my blocks are providing samples to the RF frontends=
 at 214 MSps. Is that right?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Then how the operation can be consistent when the samp=
ling rate of the RF frontends is still at 200MSps.</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Is it possible to synchronize both the 214 MHz and the=
 200 MHz clocks to the same 10 MHz external reference, or to=C2=A0 use the =
200 MHz reference clock as my HW blocks main clock?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">=C2=A0</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Best Regards</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
<span lang=3D"EN-GB">Cherif</span></p>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--00000000000037db6d058f64c425--


--===============5502984866134631161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5502984866134631161==--

