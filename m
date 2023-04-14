Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 792496E262C
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 16:48:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7718B3845F0
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 10:48:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681483722; bh=GawhYJ+d8F1PbNNuay22K77MxPnuAb0G7/Yr0bShcCw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=pSM8fObLUte6D5hIH02SpmaTv3fE+ZUjX30CAn+ofJ3dsNO+i43XLbJxSvYn3x/bA
	 YDI1Lt7lTvSXD+eJU9lSS+HKsozoYS0/+WpAk2VEz2gk7o0STrSz+UCRKjDqf1W7KH
	 wq8veb+GVYa0By1JYTquX5xAoKrgy8r5HdDD2PWAbRwOgs/eCuz7H+OQQ3Bw3PZlE+
	 AWgRTsW/Tm811cLkjfzsYtgglKsYZGRdYibf45+544WBZ5dfsvK2uupAgi83dmJlN+
	 3QfGoU9gWl+QdUs8Ytyq9h4Kp27Vvuhr5GCgC7SGu19XTWko86ErkvzWGSNWlWybqh
	 iwhxDm8xZjdRQ==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F699384083
	for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 10:47:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="XoamE/Gh";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id c9so7313142ejz.1
        for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 07:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1681483666; x=1684075666;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kujtEgp8UWWUdN/J7/jNr+8zv3nEfAiw9T/QP1ICSMg=;
        b=XoamE/GhNfkZChqLbxQiQosrfTT3aJ8zb3nSAc3Wd8hElIsvnV667VA09YTFvDSWOP
         ycrtq50HtmigRZYVYaBuU3KKAMZRnGH0JPyQUX5xgC435l/umqHGlFDzfVjIlDVmrkrO
         QiGXxVo6Np0WpNcopUH339uPa/9mLzNSzaXx6rk3pOOsKYhr+eQxqjwxEohZZs2ZATlV
         /wrMsGir54m+xY8F9wusHqkdKRXtqMt9CjJzZ4IJQWDYUCG4qApOgLgDo2MDeGMw+XDb
         ZOsWHP9Dlz54Yrba6HqGFp21cbIZ8+vVQ0w9++lnSfFJSL6d7G5RGNyyGfbQwTENtMqs
         Ej2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681483666; x=1684075666;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kujtEgp8UWWUdN/J7/jNr+8zv3nEfAiw9T/QP1ICSMg=;
        b=HHeXVxAsIQa9BRzWxO+Rbonwd5ZtXbw0WQ5rtsAvH1dQ4g/37iOngWIB/0GABeF0nh
         juaxrZCaj7/94oeN5BKcih3F0HiwCIYTXfncvbj1kUIf3T5frarOQI/dpFUr0QiO2/HJ
         MWtbTJKUGoeeFyjLkRlqEx289eYMKa13e36LXqIQxbgeddPNLhJUPkIqcW65+9v/K76u
         1YZsIoLIHdPKePuoCFWf8tSV2kEC6zAEabDImhjt6cVuLUNKhmECGj6CWf6V+agl4THS
         F+q7r9Y9FX5xoG3SW4X1KvKgtoBVF2HizQ3D93cDgoWR2tFVrFc2YLStsqjTEXGF4aOP
         3dnA==
X-Gm-Message-State: AAQBX9ei6hNd+ECgvVInFt8paiuphRCoIsejX4/teMhX5CqqFIY8PiUs
	+l+35mTLed9fj3RVtEu+2Fb5hh1MOwtMsYVnxTRhOJONQjw2FpIMSIw=
X-Google-Smtp-Source: AKy350ZO6+mJxKySGjhHcMq3qyD8g2K2VJiBi6+nzg3wsJnHh9+4ftAoeIhjXMhxm/K4WSNuIUjz3mWRus5sXbWv7Mw=
X-Received: by 2002:a17:906:b2cb:b0:94e:eb42:2a76 with SMTP id
 cf11-20020a170906b2cb00b0094eeb422a76mr894110ejb.6.1681483666140; Fri, 14 Apr
 2023 07:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com> <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com> <20230413210221.4BED44D905@mail.futurelabusa.com>
 <6633af1b-5726-e020-83f4-24454739e486@gmail.com> <20230413225129.0E1C84D94B@mail.futurelabusa.com>
 <e1b58b68-2087-1793-5d6c-89ccdd949ded@gmail.com> <CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmail.com>
 <0d43a8a6-f7a7-811b-14bd-42e2981a5957@gmail.com> <CAB__hTS+SR2zo4ZMEO1OTzfnxpvhQiE75rQhuuMSonrNYocBJg@mail.gmail.com>
In-Reply-To: <CAB__hTS+SR2zo4ZMEO1OTzfnxpvhQiE75rQhuuMSonrNYocBJg@mail.gmail.com>
Date: Fri, 14 Apr 2023 10:47:34 -0400
Message-ID: <CAB__hTRF2E29DsqJ5N_X3rfNQpoEAYt96uX0AA7LQWC8j6Pxew@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LOEILQ3AOYQO2GXSAAP7O5I5ZXU42RCM
X-Message-ID-Hash: LOEILQ3AOYQO2GXSAAP7O5I5ZXU42RCM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jim Schatzman <james.schatzman@futurelabusa.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOEILQ3AOYQO2GXSAAP7O5I5ZXU42RCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5254424663226012468=="

--===============5254424663226012468==
Content-Type: multipart/alternative; boundary="0000000000009de02d05f94cec19"

--0000000000009de02d05f94cec19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jim,
One more thought.  One way to buffer data on the host side is to use OS
pipes.  We have used this successfully for continuous receive streaming.
In /etc/sysctl.conf we set some options such as "fs.pipe-max-size" and
"fs.pipe-user-pages-soft" and had separate applications - one filling the
pipe and the other consuming the data.  Of course, you could also create
some type of buffer directly in your application (perhaps even gnuradio has
a way to buffer the data read from the SSD file before sending to the N310)=
.
Rob

On Fri, Apr 14, 2023 at 10:30=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrot=
e:

>
>> One of the things that puzzles me is that 12.5Msps just isn't that high =
a
>> streaming rate, in fact it's totally supported over
>>   a *1* GBit interface.
>>
>> At 12.5Msps, that buffer fills(drains) in about 2.5ms.   There's plenty
>> of buffering on the host to buffer application scheduling
>>   issues, so I don't know where these underruns would be coming from.
>>
>> I don't really know what the OS does in terms of "transmit" buffering
> (I'm slightly more confident on the OS behavior for the receive packets).=
 I
> can say that avoiding "U" has always been harder for me than avoiding "O"=
.
> My concern is that the OS is not doing much of any buffering on the Tx si=
de
> (perhaps none) such that if things pause for the 2.5ms you mentioned, the=
n
> "U" occurs.
>
> But, one more comment about incorporating the DRAM fifo: I noticed that
> Ettus has a BIST image that uses this FIFO for the N310 (see here
> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n31=
0_bist_image_core.yml>).
> So, this would be a great example to use for creating a custom image.
> Rob
>

--0000000000009de02d05f94cec19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Jim,<div>One more thought.=C2=A0 One way to buffer data on=
 the host side is to use OS pipes.=C2=A0 We have used this successfully for=
 continuous=C2=A0receive streaming.=C2=A0 In /etc/sysctl.conf we set some o=
ptions such as &quot;fs.pipe-max-size&quot; and &quot;fs.pipe-user-pages-so=
ft&quot; and had separate applications - one filling the pipe and the other=
 consuming the data.=C2=A0 Of course, you could also create some type of bu=
ffer directly in your application (perhaps even gnuradio has a way to buffe=
r the data read from the SSD file before sending to the N310).</div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Apr 14, 2023 at 10:30=E2=80=AFAM Rob Kossler &lt;<a href=3D"=
mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><blockquote =
type=3D"cite"><br>
    </blockquote>
    One of the things that puzzles me is that 12.5Msps just isn&#39;t that
    high a streaming rate, in fact it&#39;s totally supported over<br>
    =C2=A0 a *1* GBit interface.<br>
    <br>
    At 12.5Msps, that buffer fills(drains) in about 2.5ms. =C2=A0 There&#39=
;s
    plenty of buffering on the host to buffer application scheduling<br>
    =C2=A0 issues, so I don&#39;t know where these underruns would be comin=
g
    from.<br><br></div></blockquote><div>I don&#39;t really know what the O=
S does in terms of &quot;transmit&quot; buffering (I&#39;m slightly more co=
nfident on the OS behavior for the receive packets). I can say that avoidin=
g &quot;U&quot; has always been harder for me than avoiding &quot;O&quot;.=
=C2=A0 My concern is that the OS is not doing much of any buffering on the =
Tx side (perhaps none) such that if things pause for the 2.5ms you mentione=
d, then &quot;U&quot; occurs.</div><div><br></div><div>But, one more commen=
t about incorporating the DRAM fifo: I noticed that Ettus has a BIST image =
that uses=C2=A0this FIFO for the N310 (see <a href=3D"https://github.com/Et=
tusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n310_bist_image_core.yml" t=
arget=3D"_blank">here</a>). So, this would be a great example to use for cr=
eating a custom image.</div><div>Rob</div></div></div>
</blockquote></div>

--0000000000009de02d05f94cec19--

--===============5254424663226012468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5254424663226012468==--
