Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ECCAB1362
	for <lists+usrp-users@lfdr.de>; Fri,  9 May 2025 14:30:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 790283860D7
	for <lists+usrp-users@lfdr.de>; Fri,  9 May 2025 08:30:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746793824; bh=7lD12rz94JhpQF3DlXOuj6s8reXmW8taz8Gru/6dlmI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uU1gyutpeUmXYKvfqKvkb+H4RS/Gl5x5asfOt4puXhl1yi7cCDHwq2SE1TobBSSqz
	 +vA7HFQ01UwbvY3TdrFfRe2w+17rb2lMCiF7QDXfDaqk1JIJGfft+FVzsfMuQjS3KX
	 wyKzjfzlSLAUmpl6IAju8e98w4xG71yyfETPbnOkYPSvLsmhbaWW2NQkV28w1vfGfa
	 7AfovstkH/MpdiS1HEid0CwltrXsF4gvpL83uQAE10jTDJbfdaTc47nXiOYHPJLBR9
	 NpGMSeCbHFAw905eX+8gYVLmLReBbV54d3Cc/OR7hKgXpKX8ke1bYN+cFay+Eo0081
	 arzo5LRe35Gxw==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 39F80385D84
	for <usrp-users@lists.ettus.com>; Fri,  9 May 2025 08:29:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YeKCOJtI";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5fab81d6677so3874059a12.1
        for <usrp-users@lists.ettus.com>; Fri, 09 May 2025 05:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746793764; x=1747398564; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+kxyJqt17KM+BxmNfMqC5m0YwSpxq7bZQ2CYQH0Pevw=;
        b=YeKCOJtI2Z76YdWwnreWqCCKv3KCNZAyNyOmRTNEuNv2rzAq5cPYsonjlzXZDPg5jU
         1wq4/Xe+YhPHbakoTvemoLZ3oPgiOe0PiBkNrfLph8YiGsL526iMwIP0FiK5pZ108QAd
         oNRUbBQIYdbtchF2O+HZNj8aZO8133oXGqlG10SzkA1DLZ2REv9bo7svcJxO+7ZTXj4b
         03vEcfuyc0oF16tfGZAhuVftil+s0bQ3WT/3AXGU11bZRLVy9++0yRCJ2ByRfp/b5Sht
         nj4ndAykPzKo54PRsVbcRdQZ7QsFNtXl9FRfSbiyEIeVonv5169JhosxS8dl5dn4hRnm
         Pd0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746793764; x=1747398564;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+kxyJqt17KM+BxmNfMqC5m0YwSpxq7bZQ2CYQH0Pevw=;
        b=Ol2JtAtLmAHeVGcJcIcWxPqvJt+JvcdPMpgGzP9BME4qHrGBA/QZ5pzWCB02SpNJag
         u8z7CjkL3GGRYGX8CYPlBs8DxavaY/JJbqKlnQSCQqiO+OEvGsRddg6zcF7ri3MS15S0
         IQ/cxSaMqaGC3WK/KKy6LWRhJwhh36PsFb4HjcKBMXBE2iDFsiZ8eBcpZ7oDaMHvJyMH
         dhtbJKOeo6qcWUXhyosCWO37sRaIFxP0K92OyFDw17ziQVgnAnK8Rgd0XaHzQYuoyA9z
         iqwEHuwNcV2Ud2ZiMjGljuaZQIUrW0y7NR4shuFtiMwoIRrkXGmSYD7L8hGHaOp3oTCW
         xv1Q==
X-Gm-Message-State: AOJu0YyXU2xQyzVWAqST7rQHkxP1HIzJjqMwhL7T5ZKxmmCRDzzFtE67
	wNL4zIKca+UT7dBXA0X001xjkHjR4so9CJtgnIrGo0Hwwjw0jJnBOqh3apFDz0z+yPvDQdUh69Y
	g5Vu9giVKhzMURXIZ1R4ifrjQicc=
X-Gm-Gg: ASbGncvY/58EgzxQ/pW2WDeTPCGCP6goT2kwo5KAtfoHUOxrg0vu1rAwaSP/qU5tob7
	sQPPlmDyoKEJJzDFVz2gltWNkhrTxdHXJ3dBjugoCyJW2pKLaOL1Pk3dG7p5rYZBKTE8Ahh0hOq
	v0PgN2USiZILNT32hrYDLD3A==
X-Google-Smtp-Source: AGHT+IGNt2+o5UuSZVgaKX3jC5h6a/7NBpEsl72spdhh2AA7n3vnDf7pYVRWyfzu8nssZKREmSROsLOAY0Sp7rQKmqo=
X-Received: by 2002:a17:907:c717:b0:acb:33c6:5c71 with SMTP id
 a640c23a62f3a-ad219050cb0mr340986866b.29.1746793763514; Fri, 09 May 2025
 05:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK7pXB_g8rq3Cd-GAP0bRtc09-+c75xGqdZ3czMADBYorw@mail.gmail.com>
 <MW6PR10MB755186E49D5FA339352E51A99F8AA@MW6PR10MB7551.namprd10.prod.outlook.com>
In-Reply-To: <MW6PR10MB755186E49D5FA339352E51A99F8AA@MW6PR10MB7551.namprd10.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 9 May 2025 08:29:11 -0400
X-Gm-Features: ATxdqUEnlnsFImlDCGROihRoEKtVBj50YO2Snb0wqqWhtqHtR_N2phdJXv7Y7SU
Message-ID: <CAEXYVK5A0O3v0qrOFOmcKc=xxJE4AOuc1Nht=5Uu_gkFKZszLg@mail.gmail.com>
To: "Tomita, Aki" <Aki.Tomita@emerson.com>
Message-ID-Hash: GGU5PMJ5YLHCBDGFWGTVFNTXHPLWQJG6
X-Message-ID-Hash: GGU5PMJ5YLHCBDGFWGTVFNTXHPLWQJG6
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] RFNoC Payload Mismatch
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGU5PMJ5YLHCBDGFWGTVFNTXHPLWQJG6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6755963665704716319=="

--===============6755963665704716319==
Content-Type: multipart/alternative; boundary="000000000000c52cad0634b31d9b"

--000000000000c52cad0634b31d9b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Aki,

Correct regarding the X440. My block expects sc8 coming in through CHDR,
but I made no other changes to the RFNoC core or to UHD itself regarding
the data. Is this something I need to do?

I tried finding all the places where ITEM_W was defined anywhere outside of
my block but this still occurs.

For the CHDR format, the lowest byte of the payload (i.e. the first byte of
the payload as seen in wireshark) should also be the lowest byte in the
payload as presented to my block, correct?

Thanks,
Brian


On Fri, May 9, 2025 at 12:21=E2=80=AFAM Tomita, Aki <Aki.Tomita@emerson.com=
> wrote:

> Hi Brian,
>
> Just for background information, this is for the X440, like in your other
> posts? Are you adding in the sc8 support in your custom image? Out of the
> box, an sc8 for otw isn't supported for that device. There is FPGA code t=
o
> handle sc8, like the b2xx, but they're operating on the Legacy CHDR forma=
t.
>
> Aki
> ------------------------------
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Wednesday, May 7, 2025 8:04 PM
> *To:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] RFNoC Payload Mismatch
>
> I've got a custom image with CHDR_W=3D512 and I am using sc8 for both the
> otw and cpu formats. In my FPGA simulation, I set the ChdrData with 512 f=
or
> the CHDR_W and 16 for the ITEM_W. I am loading a counting pattern with th=
e
> real part being incremented every sample, and the imaginary incrementing
> every 128 samples. In simulation, the 512-bits coming out at the end are:
>
>     0x1f001e001d001c00 ... 01000000
>
> In wireshark captures, the Payload shows this counting pattern going up:
> 00 00 00 01 00 02 00 03 ... as I would also expect.
>
> The ILA shows me a strange swizzle going on the 512-bit bus:
>
>   0x010000000300020005000400 ... 1f001e00
>
> It appears like it thinks data items might be 32-bits wide (16-bit I and
> 16-bit Q) and it's also backwards on the bus (first sample in the etherne=
t
> packet is the upper most sample in the CHDR bus). I am using the
> chdr_to_axis_pyld_ctxt with CHDR_W set to 512, ITEM_W set to 16, but the
> NIPC is just 512/16 so it's the full 512-in, 512-out - no width translati=
on
> there. Also note that the context is perfect - it's just the payload that
> is strange.
>
> For the life of me, I can't see where the misconfiguration might be
> occurring. As I said, my simulation with the testbench for my block pushe=
s
> a counting pattern to a queue of item_t, then I use item_to_chdr() to pac=
k
> it and give it to the CHDR BFM. I'd really like to be able to simulate wh=
at
> might be going on but I am hesitant to try and include the ethernet
> transport adapter into my block testbench.
>
> Any pointers on what this might be? Does the wireshark ethernet packet
> description sound correct to you for the payload? The lowest bytes in the
> ethernet packet should show up as the lowest bytes on the payload bus?
>
> Thanks,
> Brian
>

--000000000000c52cad0634b31d9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Aki,<div><br></div><div>Correct regarding the X440. My=
 block expects sc8 coming in through CHDR, but I made no other changes to t=
he RFNoC core or to UHD itself regarding the data. Is this something I need=
 to do?</div><div><br></div><div>I tried finding all the places where ITEM_=
W was defined anywhere=C2=A0outside of my block but this still occurs.</div=
><div><br></div><div>For the CHDR format, the lowest byte of the payload (i=
.e. the first byte of the payload as seen in wireshark) should also be the =
lowest byte in the payload as presented to my block, correct?</div><div><br=
></div><div>Thanks,<br>Brian</div><div><br></div></div><br><div class=3D"gm=
ail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, May 9, 2025 at 12:21=E2=80=AFAM Tomita, Aki &lt;<a href=3D"mailto:Aki.T=
omita@emerson.com">Aki.Tomita@emerson.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-5606717967553747=
57">




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
<div id=3D"m_-560671796755374757appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-560671796755374757divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank"=
>bpadalino@gmail.com</a>&gt;<br>
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

--000000000000c52cad0634b31d9b--

--===============6755963665704716319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6755963665704716319==--
