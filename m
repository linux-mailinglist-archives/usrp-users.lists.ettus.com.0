Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BD8611490
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 16:29:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AE81380911
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 10:29:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666967342; bh=GoAdFuvLdWG/DWnl1GCWjvMzbyaX9hQGQP0ZKMHdXko=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WwlkfWzyZChHJ7pWrrpVQhTnZO/+m1cYIqoOzSMgzDsqYkXUIEKuk2q4JYPIIJrSt
	 0vTgVHtMjK1GfpAtNRIQCcUtEyDaWhGwqJ/IDog3pXYX86P8M6xfAxyR9TvgVf+gak
	 S2k7dRLxzH8h4onDWr1H7CtzB+p8SmngIQJ7e/hwtTYsIDu32krVZYtwdlmv7zAO34
	 +pVqMPum0Z9MvU/oQQ6qm0QFgFdn4iIsOHdTOOQWwpI9E9O3m6MCpQh6FQdHeJELjR
	 hcpAKPUacSuxX4WCFjA1TiUmRQ31Xv5SXBZ1Mz/qR+SzzneDr3nRbxSeppU4htPW9V
	 yxSXO0OQss01w==
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 67708380A2D
	for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 10:27:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FkxJ6hjH";
	dkim-atps=neutral
Received: by mail-oi1-f175.google.com with SMTP id u132so6365598oib.0
        for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 07:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dfd27kg+L3x5SWj74IW+322oPcLWYxRhEea+LYrVMbw=;
        b=FkxJ6hjHkPw790jfuG+uxfZMwdj+9cr7lv+ROjA0Kl5qIgvm4PUPiowLc0E4dv8qwK
         qoxBVLTqMeDuqQ4ufACxVaLglJzDoXziIud1f/Jkq9UdKbkVFrsc0ACXAjTDRCCYiDJ+
         lP8MWfQWIUSfVJSTUmgvfX2o/i0ETT4K7B2ejSfWlhxbwh3t3QSu22TK7Qg0bNXVCw4H
         RvYQKyB4OxBc13nywxJJFVBPoASGzb8OpmWixVHwQKJR8utmsT5lFCvhoC2hO6yP+t4A
         3HW1iI7ac5Yk8TDwicN1y46VFg1YDGQR1ZE30LYdzOtQfDQwI9iJOMcR5iQt2XJZQjZN
         Dm0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dfd27kg+L3x5SWj74IW+322oPcLWYxRhEea+LYrVMbw=;
        b=1g+CwdJdk3KvDloYJkH3NFuqIfibufXCti05mxd3KvIwAGWrE457/ginIIXm5fzkRX
         yE8VX7KO4tAp+vBETzz8MLE3CfNHopt7UWcwyzu6XHIVcj+eGMyjdBrZEBqkvRG9CREl
         YEZOwaVvwHP3tYnMnvKex1O4uJuudHxATPuzgmO6eaBke+LcGgYDGYY72ZdJb39kz+Yf
         fzLHpO1OpmNXIAj5Bcd85MphFfCyYNikqaheC+9Hnzo5t5mxhqdXx9GKiNKUDY8sDsgw
         dyhY3pq1dBYlc8fSgyQqiRB2lGFA+4rlZZFRMLJnuZqPwxN7CaWFPE6zgCax+sHQcVqj
         0crg==
X-Gm-Message-State: ACrzQf0EJq5h/jO7QLqQIt4Y0yEKoPxwCidSawK5ryVHoSVGkY3vgd0w
	mkN6zZlo4ybaPlv9vKyhMD9DoV9ar2wDjcsUgYA=
X-Google-Smtp-Source: AMsMyM52MqayJmvD/v3vTy4e94S42y6+hIS4miPRSciuT5Uro4UbKxMzAQ6WKdHSfQOenEhDzeTz6z9wfFYCNCnWW50=
X-Received: by 2002:a05:6808:23d4:b0:354:e81a:12a8 with SMTP id
 bq20-20020a05680823d400b00354e81a12a8mr8034026oib.78.1666967262614; Fri, 28
 Oct 2022 07:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g@lists.ettus.com> <CAFche=gjO83KNeahXd2SdZmQY4AeCKw-pvNSgoWrwsQe=Wvy=A@mail.gmail.com>
In-Reply-To: <CAFche=gjO83KNeahXd2SdZmQY4AeCKw-pvNSgoWrwsQe=Wvy=A@mail.gmail.com>
From: Adrian CR <adri96roll@gmail.com>
Date: Fri, 28 Oct 2022 16:27:30 +0200
Message-ID: <CALq0fFzysPcNYW8DdGaqrYSHT_N0Kj6HuF9X1vmi9ymxesK16A@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: HWKWMGZ47O2AVVAC4HTWRIJ2KPTRTZWY
X-Message-ID-Hash: HWKWMGZ47O2AVVAC4HTWRIJ2KPTRTZWY
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_AXI=5FRAM=5FFIFO_doesn=C2=B4t_return_any_information?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HWKWMGZ47O2AVVAC4HTWRIJ2KPTRTZWY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3603972245068524931=="

--===============3603972245068524931==
Content-Type: multipart/alternative; boundary="0000000000008a5a1a05ec190fba"

--0000000000008a5a1a05ec190fba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I managed to receive the respective values of m_ready and s_valid. The
problem I think was that I was doing a conversion to chdr-payload and I was
not receiving data. Now I have done a chdr to chdr data and I am receiving
the expected values of these flags. Now I have the problem of how to create
the chdr data. I don't know if any of the 64 bits has to have a special
value. I have seen several schemes but I am not clear about the scheme.

Thanks in advance

Adrian

El vie, 28 oct 2022 16:03, Wade Fife <wade.fife@ettus.com> escribi=C3=B3:

> You mentioned you don't receive any ready. Do you mean that the tready
> signal never asserts on your output port? It is not allowed in AXI-Stream
> to wait for tready to assert before asserting tvalid. Some devices will
> assert tready before tvalid asserts, but some won't. You need to assert
> tvalid when you have data to send. The receiving device will assert tread=
y
> when it is ready to accept data.
>
> You also said that you do not receive any valid. I assume you mean that
> tvalid never asserts on your input port. That would indicate that no data
> is making it to your block. That could be a software issue, or perhaps
> something wrong in your YAML file or your block's code. Perhaps a missing
> clock connection?
>
> Wade
>
> On Thu, Oct 27, 2022 at 6:58 AM <adri96roll@gmail.com> wrote:
>
>>   Hello everyone,
>>
>> I am trying to make use of axi_ram_fifo together with a rfnoc block of m=
y
>> own. Basically, my block receives 2 inputs (one from outside and one fro=
m
>> FIFO) and sends 2 outputs (one to outside and one toFIFO) . These are
>> converted to the payload and function of my block is to store the data m=
y
>> block receives from a specific value and receives them later from FIFO
>> after some time. I had thought the control by means of the valid of send=
ing
>> to FIFO and the ready of reception from FIFO. However, when I synthesize
>> and execute, I do not receive any data and checking I have realized that=
 I
>> do not receive any ready (when I am going to send) nor any valid (when I=
 am
>> going to receive) from the axi_ram_fifo block.
>>
>> I don't know if the error is in the conversion from chdr to payload
>> because, I get the ready from the context but I really don't know.
>>
>> In my e320 synthesis file I have the connections like this:
>>
>> Memory characteristics are: 64 mem_data, 31 addres and 1 port.
>>
>> # MioRAM0 to fifo0(0)
>>
>>   - { srcblk: MioRAM0,    srcport: out_1,  dstblk: fifo0,  dstport: in_0=
 }
>>
>>   - { srcblk: fifo0,  srcport: out_0, dstblk: MioRAM0,    dstport: in_1 =
 }
>>
>>   # Custom block connection: ep4 to MioRAM0 and MioRAM0 to ep4
>>
>>   - { srcblk: ep2, srcport: out0, dstblk: MioRAM0, dstport: in_0 }
>>
>>   - { srcblk: MioRAM0, srcport: out_0, dstblk: ep2, dstport: in0 }
>>
>>
>>
>>   - { srcblk: fifo0,    srcport: axi_ram,     dstblk: _device_, dstport:
>> dram        }
>>
>>
>> Thanks in advance.
>>
>>
>> Adrian CR
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000008a5a1a05ec190fba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I man=
aged to receive the respective values of m_ready and s_valid. The problem I=
 think was that I was doing a conversion to chdr-payload and I was not rece=
iving data. Now I have done a chdr to chdr data and I am receiving the expe=
cted values of these flags. Now I have the problem of how to create the chd=
r data. I don&#39;t know if any of the 64 bits has to have a special value.=
 I have seen several schemes but I am not clear about the scheme.=C2=A0</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks in advance</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Adrian=C2=A0</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 28 oct =
2022 16:03, Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"=
_blank" rel=3D"noreferrer">wade.fife@ettus.com</a>&gt; escribi=C3=B3:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>You mentioned you =
don&#39;t receive any ready. Do you mean that the tready signal never asser=
ts on your output port? It is not allowed in AXI-Stream to wait for tready =
to assert before asserting tvalid. Some devices will assert tready before t=
valid asserts, but some won&#39;t. You need to assert tvalid when you have =
data to send. The receiving device will assert tready when it is ready to a=
ccept data.</div><div><br></div><div>You also said that you do not receive =
any valid. I assume you mean that tvalid never asserts on your input port. =
That would indicate that no data is making it to your block. That could be =
a software issue, or perhaps something wrong in your YAML file or your bloc=
k&#39;s code. Perhaps a missing clock connection?</div><div><br></div><div>=
Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Oct 27, 2022 at 6:58 AM &lt;<a href=3D"mailto:adri9=
6roll@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">adri96roll=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>=C2=A0 Hello everyone,</p><p>I am trying to make use of axi_r=
am_fifo together with a rfnoc block of my own. Basically, my block receives=
 2 inputs (one from outside and one from FIFO) and sends 2 outputs (one to =
outside and one toFIFO) . These are converted to the payload and function o=
f my block is to store the data my block receives from a specific value and=
 receives them later from FIFO after some time. I had thought the control b=
y means of the valid of sending to FIFO and the ready of reception from FIF=
O. However, when I synthesize and execute, I do not receive any data and ch=
ecking I have realized that I do not receive any ready (when I am going to =
send) nor any valid (when I am going to receive) from the axi_ram_fifo bloc=
k. </p><p>I don&#39;t know if the error is in the conversion from chdr to p=
ayload because, I get the ready from the context but I really don&#39;t kno=
w. </p><p>In my e320 synthesis file I have the connections like this:</p><p=
>Memory characteristics are: 64 mem_data, 31 addres and 1 port.</p><p><code=
># MioRAM0 to fifo0(0)</code></p><p><code>=C2=A0 - { srcblk: MioRAM0,=C2=A0=
=C2=A0=C2=A0 srcport: out_1,=C2=A0 dstblk: fifo0,=C2=A0 dstport: in_0 }</co=
de></p><p><code>=C2=A0 - { srcblk: fifo0,=C2=A0 srcport: out_0, dstblk: Mio=
RAM0,=C2=A0=C2=A0=C2=A0 dstport: in_1=C2=A0 }</code></p><p><code>=C2=A0 # C=
ustom block connection: ep4 to MioRAM0 and MioRAM0 to ep4</code></p><p><cod=
e>=C2=A0 - { srcblk: ep2, srcport: out0, dstblk: MioRAM0, dstport: in_0 }</=
code></p><p><code>=C2=A0 - { srcblk: MioRAM0, srcport: out_0, dstblk: ep2, =
dstport: in0 }</code></p><p><code>=C2=A0</code></p><p><code>=C2=A0 - { srcb=
lk: fifo0,=C2=A0=C2=A0=C2=A0 srcport: axi_ram,=C2=A0=C2=A0=C2=A0=C2=A0 dstb=
lk: _device_, dstport: dram=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }</co=
de></p><p><br></p><p>Thanks in advance.</p><p><br></p><p>Adrian CR</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000008a5a1a05ec190fba--

--===============3603972245068524931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3603972245068524931==--
