Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D25C6113F8
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 16:05:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1E9138192B
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 10:05:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666965910; bh=MMtKSszRsseIwbUnYqXVNSlrgX5dSdt/roNrpHWUZNQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=v6iP6YG10Muk/K2qgQJCy/q3elZgOwDp1E8RtNl4w+bM6j9tx/d7g0z4+Ocf4yd+w
	 Jww123Xp/3mx6UDf35r8jwt5KNxiGyv0d7WVnpK/jMDgfEHO3rOa42guUQhYmGQrbR
	 8XduzhaoBMgcFE7FRPHxKIMN7F972RXNpmcv/XXHxJsTbGVKSBvU4vGtyDZX84yBFx
	 eRVkdoYnbnwCUg3jYdOX34/e7OVm+puiTD7NuHFj1opEIpXuptTvoXOwB6PttgNUUY
	 GO1ClP/nIHqh/vvVpLqpYZJ/emBEpOrv53zB4NUWEUlivt934zk0S6I5mhTalgo96j
	 wZWoLwXGmjPcQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 84BAB38094F
	for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 10:03:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="7y9Dhrr1";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id f7so2349192edc.6
        for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 07:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFxvTaz/XHE640r64siH0viTdmXrtMpEvdFtBa0dZfo=;
        b=7y9Dhrr13HPtd8+o5UPd6GbsuX+Xk8DjRGXABABHYYTd1m5ZpwJDh5msQh0iQnyMyw
         9THihxDbec72DZNGNoSUdKJy5EVq9gsddk4mIRDto1H6Ye6dORVPoFnWnQsmBIhm7AlA
         0A5sytejy311rVMXKb+5eJcmyyab05NThYB0tImfXZbjjXYR0VK/eye8RyC2iUrQY6WU
         98YvqfHKLPgvrIajaZmOZ6BbQP2AEk/6LtFuwSCQbEVV9fHhw05KxMJkxR0XYtjo7tPe
         zm+eysCFQpzVVOOJQxxTjs0zfOlROIAGfB7Xy53mELJtxxcP+JYCiv2hrz8Sw8urenE4
         NtSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFxvTaz/XHE640r64siH0viTdmXrtMpEvdFtBa0dZfo=;
        b=nUeutGz/1vE+92m0hbrUq+Jjnn8gdPGoNLtbHQ4FjXjerokVtI74cEksXLQSm4irvO
         EMEu0c4Pwvm10IeLZTcKboYlBxZ1OZWBSiTIH2xktWcDR5nlP/Q26Sg2NY3Amlc2lOBE
         JvTF2kJPsbKo8FZhJl5T4iggtag5HHAoXLYb56kFsbeZF/QDdOR6o/ZOrDK2gh1ovlel
         wNCikYiO+9mGXSQf56qroSN/aNGfsjMZir1/H9Adu+TPCTtdnd345LVdBiYlaIX2hflB
         WF7gEzcmvKcws7ZAyVkAC9bm6t/PemH3+kwutE70f4x8s0boHcuqXSM0sJm4W3nJVAj1
         5/qQ==
X-Gm-Message-State: ACrzQf0oRcSwrUNXAzHdaBUjBGKnx68nmPKh38DfaAVkkfI0dvIE6vjR
	y5Sn1dTY6w9j+x+Oq4cBT14aF9pRJ3iTcbgmvj3r8Em+
X-Google-Smtp-Source: AMsMyM4zYOVqGRG1IphWzN++kvPkZVkqRVUmEX/Gfj8C0itUWGqbRDST3+ITZRiMqBGnffez1s13tskuzYLiY3XrZwQ=
X-Received: by 2002:a05:6402:42c7:b0:461:bea2:8a70 with SMTP id
 i7-20020a05640242c700b00461bea28a70mr26842703edc.261.1666965836129; Fri, 28
 Oct 2022 07:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g@lists.ettus.com>
In-Reply-To: <sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 28 Oct 2022 09:03:39 -0500
Message-ID: <CAFche=gjO83KNeahXd2SdZmQY4AeCKw-pvNSgoWrwsQe=Wvy=A@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: ONCM4K2OP56N3RG7CQN3T7CAVS7WPKDC
X-Message-ID-Hash: ONCM4K2OP56N3RG7CQN3T7CAVS7WPKDC
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_AXI=5FRAM=5FFIFO_doesn=C2=B4t_return_any_information?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ONCM4K2OP56N3RG7CQN3T7CAVS7WPKDC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8475290238868570554=="

--===============8475290238868570554==
Content-Type: multipart/alternative; boundary="00000000000083fd9f05ec18ba79"

--00000000000083fd9f05ec18ba79
Content-Type: text/plain; charset="UTF-8"

You mentioned you don't receive any ready. Do you mean that the tready
signal never asserts on your output port? It is not allowed in AXI-Stream
to wait for tready to assert before asserting tvalid. Some devices will
assert tready before tvalid asserts, but some won't. You need to assert
tvalid when you have data to send. The receiving device will assert tready
when it is ready to accept data.

You also said that you do not receive any valid. I assume you mean that
tvalid never asserts on your input port. That would indicate that no data
is making it to your block. That could be a software issue, or perhaps
something wrong in your YAML file or your block's code. Perhaps a missing
clock connection?

Wade

On Thu, Oct 27, 2022 at 6:58 AM <adri96roll@gmail.com> wrote:

>   Hello everyone,
>
> I am trying to make use of axi_ram_fifo together with a rfnoc block of my
> own. Basically, my block receives 2 inputs (one from outside and one from
> FIFO) and sends 2 outputs (one to outside and one toFIFO) . These are
> converted to the payload and function of my block is to store the data my
> block receives from a specific value and receives them later from FIFO
> after some time. I had thought the control by means of the valid of sending
> to FIFO and the ready of reception from FIFO. However, when I synthesize
> and execute, I do not receive any data and checking I have realized that I
> do not receive any ready (when I am going to send) nor any valid (when I am
> going to receive) from the axi_ram_fifo block.
>
> I don't know if the error is in the conversion from chdr to payload
> because, I get the ready from the context but I really don't know.
>
> In my e320 synthesis file I have the connections like this:
>
> Memory characteristics are: 64 mem_data, 31 addres and 1 port.
>
> # MioRAM0 to fifo0(0)
>
>   - { srcblk: MioRAM0,    srcport: out_1,  dstblk: fifo0,  dstport: in_0 }
>
>   - { srcblk: fifo0,  srcport: out_0, dstblk: MioRAM0,    dstport: in_1  }
>
>   # Custom block connection: ep4 to MioRAM0 and MioRAM0 to ep4
>
>   - { srcblk: ep2, srcport: out0, dstblk: MioRAM0, dstport: in_0 }
>
>   - { srcblk: MioRAM0, srcport: out_0, dstblk: ep2, dstport: in0 }
>
>
>
>   - { srcblk: fifo0,    srcport: axi_ram,     dstblk: _device_, dstport:
> dram        }
>
>
> Thanks in advance.
>
>
> Adrian CR
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000083fd9f05ec18ba79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You mentioned you don&#39;t receive any ready. Do you=
 mean that the tready signal never asserts on your output port? It is not a=
llowed in AXI-Stream to wait for tready to assert before asserting tvalid. =
Some devices will assert tready before tvalid asserts, but some won&#39;t. =
You need to assert tvalid when you have data to send. The receiving device =
will assert tready when it is ready to accept data.</div><div><br></div><di=
v>You also said that you do not receive any valid. I assume you mean that t=
valid never asserts on your input port. That would indicate that no data is=
 making it to your block. That could be a software issue, or perhaps someth=
ing wrong in your YAML file or your block&#39;s code. Perhaps a missing clo=
ck connection?</div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 27, 2022=
 at 6:58 AM &lt;<a href=3D"mailto:adri96roll@gmail.com">adri96roll@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>=C2=A0 Hello everyone,</p><p>I am trying to make use of axi_ram_fifo to=
gether with a rfnoc block of my own. Basically, my block receives 2 inputs =
(one from outside and one from FIFO) and sends 2 outputs (one to outside an=
d one toFIFO) . These are converted to the payload and function of my block=
 is to store the data my block receives from a specific value and receives =
them later from FIFO after some time. I had thought the control by means of=
 the valid of sending to FIFO and the ready of reception from FIFO. However=
, when I synthesize and execute, I do not receive any data and checking I h=
ave realized that I do not receive any ready (when I am going to send) nor =
any valid (when I am going to receive) from the axi_ram_fifo block. </p><p>=
I don&#39;t know if the error is in the conversion from chdr to payload bec=
ause, I get the ready from the context but I really don&#39;t know. </p><p>=
In my e320 synthesis file I have the connections like this:</p><p>Memory ch=
aracteristics are: 64 mem_data, 31 addres and 1 port.</p><p><code># MioRAM0=
 to fifo0(0)</code></p><p><code>=C2=A0 - { srcblk: MioRAM0,=C2=A0=C2=A0=C2=
=A0 srcport: out_1,=C2=A0 dstblk: fifo0,=C2=A0 dstport: in_0 }</code></p><p=
><code>=C2=A0 - { srcblk: fifo0,=C2=A0 srcport: out_0, dstblk: MioRAM0,=C2=
=A0=C2=A0=C2=A0 dstport: in_1=C2=A0 }</code></p><p><code>=C2=A0 # Custom bl=
ock connection: ep4 to MioRAM0 and MioRAM0 to ep4</code></p><p><code>=C2=A0=
 - { srcblk: ep2, srcport: out0, dstblk: MioRAM0, dstport: in_0 }</code></p=
><p><code>=C2=A0 - { srcblk: MioRAM0, srcport: out_0, dstblk: ep2, dstport:=
 in0 }</code></p><p><code>=C2=A0</code></p><p><code>=C2=A0 - { srcblk: fifo=
0,=C2=A0=C2=A0=C2=A0 srcport: axi_ram,=C2=A0=C2=A0=C2=A0=C2=A0 dstblk: _dev=
ice_, dstport: dram=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }</code></p><=
p><br></p><p>Thanks in advance.</p><p><br></p><p>Adrian CR</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000083fd9f05ec18ba79--

--===============8475290238868570554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8475290238868570554==--
