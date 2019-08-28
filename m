Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B360A063B
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2019 17:24:46 +0200 (CEST)
Received: from [::1] (port=37282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2zoJ-0007xQ-H0; Wed, 28 Aug 2019 11:24:35 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:40155)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i2zoF-0007qa-09
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 11:24:31 -0400
Received: by mail-lf1-f45.google.com with SMTP id u29so2510003lfk.7
 for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2019 08:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qJB+jQXslEsIo1jMjzwww39sezrkd1juXNJHkkDOhhE=;
 b=V2PqtoSdqQVki1uM4laSJ94gdrPVhpxLnko+WEHaAQ340bKMshcOUdATGU9q2tE1tJ
 EsUGWhsBnH3xwInNbhbBctfLd2XtsrIJ/s9krHdT8LwqE0ijqm2BGfgV//pdYCwitqqN
 VJQLpSf6RStSjysRrrn5XdPrnLgvbAvm751+xgnb2O/S+gFzM7eEAgjb7Oeakzwza845
 JVO1QfwDMZqKMBscSqxt04Ic63YGbl22hHxLDaY3zZPo3ceDs7KJDY3n5VrJo22knslw
 C9+Fc+kG+/ZDjaxMtBLU0W8yMAXWNydi25n48/B6BmKEz8arHAfrwyuS3sMmF+Ed3Q/6
 WnRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qJB+jQXslEsIo1jMjzwww39sezrkd1juXNJHkkDOhhE=;
 b=mMrqMolow4UG+2nNoMEg2RikrLrp33fmO2J/SjSwFRBTU5tLZOIQO4o7yR/7TcojBp
 +cBxvBrZEmFGkcoECaZCqZAHutby0UPq0UkUo3ACh/Zi/bmklaq/es1SN6cXscG5ARpd
 GTVXAxkckAnn2aOTzhZ1NQJrqalk8v+EmKQeIIJdceLS2n41Xcxd6k5BoSp1+kPT7dUR
 C7FlRZaJdnA9mmte9Pk+RQIoVOWkc9ot4KEHYDNdhJLIHq6RdI5igYrVm7WfxcHKtYB6
 AQSq4dd1cd4WUToLnbl4CjOfj6Sx+bXxpSlfj2YiKaog88kEf+wwkB32gX2f1rlu8E29
 8p1g==
X-Gm-Message-State: APjAAAW0U6x5pousc6/M7um56GjVGueNz9JnXkHiYjQxKxap505uBrJo
 l1d2hXHGYu04ncrUSjTWXZ/VGWeAmJ4Ms9/hFIjVHUCb
X-Google-Smtp-Source: APXvYqwTGFrVb1W5X/PduqA31vZZ7dlpcLvmWaKFTgo9BDB0myGmP3607COEvtORm7txH3VzXSwIpY3hcZlAcevNHEk=
X-Received: by 2002:a19:6455:: with SMTP id b21mr3042504lfj.167.1567005829525; 
 Wed, 28 Aug 2019 08:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
 <CAL7q81vDWQziDHbg8FoyE0frY63HnRV=04qUejq3-uS6RUTieA@mail.gmail.com>
 <CABsifTmn7kmMusP0miNJW2hPbu95cN=ZhAtpNqscwVG7kEZA3A@mail.gmail.com>
 <CABsifTk8doL0VhOP+=OP9EPuXxPNqA0kuXmyM-s=B8CZ9YyRmg@mail.gmail.com>
In-Reply-To: <CABsifTk8doL0VhOP+=OP9EPuXxPNqA0kuXmyM-s=B8CZ9YyRmg@mail.gmail.com>
Date: Thu, 29 Aug 2019 00:23:13 +0900
Message-ID: <CAL7q81vNQFzbHh3iVbrBkpbjoteN2Qwnp2YwCeRa+uT9kozpaw@mail.gmail.com>
To: Timothy Kurp <timothy.kurp@gmail.com>
Subject: Re: [USRP-users] RFNoc Testbench / EOB
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8787885544271727950=="
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

--===============8787885544271727950==
Content-Type: multipart/alternative; boundary="000000000000d4844d05912ef984"

--000000000000d4844d05912ef984
Content-Type: text/plain; charset="UTF-8"

Hi Tim,

My mistake on my original reply, you should use push_pkt()/pull_pkt(). You
provide the header to that function (along with the payload), which is how
you will be able to set EOB and a packet size with an odd number of 16-bit
samples. If you really dig into sim_rfnoc_lib.svh, sim_cvita_lib.svh, and
noc_block_export_io.v, you'll see that push_pkt() interfaces with noc_shell
not axi_wrapper. Even though cvita_payload_t is a 64-bit wide queue, the
packet size in the header is what matters. You'll also need to remove or
modify line 236 in push_pkt() in sim_cvita_lib.svh, as that assertion
checks if the header's packet size is a multiple of 4 bytes.

Jonathon

On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp <timothy.kurp@gmail.com> wrote:

> Hi Jon,
>
> This doesn't answer my question, perhaps I didn't convey the problem
> clearly. I am trying to test the case where TLAST occurs on an odd sample,
> at the same time as EOB. Push word provides access to tlast, but not EOB.
> To throw eob I need to use send() which takes in pkt.payload and
> pkt.header. I can manipulate eob in the metadata there.  pkt.payload is of
> type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at the
> end of the packet, which will always contain a multiple of 2 complex
> samples since the payload is defined at 64 bits. That is my problem.  There
> is no way to throw eob and tlast on a packet that contains an odd number of
> i/q samples.
>
> Tim
>
> On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp <timothy.kurp@gmail.com>
> wrote:
>
>> Thanks! I will look at that example.
>>
>> Tim
>>
>> On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Tim,
>>>
>>> Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
>>> sample by sample basis. Unfortunately, if you want to do sizes smaller than
>>> 32-bit, you'll need to write your own version of send()/recv() or
>>> push_word()/pull_word() from sim_rfnoc_lib.svh.
>>>
>>> Jonathon
>>>
>>> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hey Users!
>>>>
>>>> I think this may be a possible deficiency in the test bench
>>>> architecture, or perhaps I just don't know how to instrument it properly. I
>>>> have a custom block that performs a 2:1 rate change roughly, performing
>>>> compression of the 16 bit I/Q from the radio down to a 16 bit word that is
>>>> compressed, I won't describe how. There is a corner case if EOB occurs when
>>>> there is an odd number of samples received from the radio. I have handled
>>>> this by using simple mode = 0, manipulating cvita header manually and
>>>> throwing tlast to make packets, with success. The noc block works, but I am
>>>> struggling with how to exercise the corner case in the testbench.
>>>>
>>>> From what I have seen, the testbench only allows for EOB to be
>>>> manipulated on sample counts that are a multiple of 2 (send() operates on
>>>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and
>>>> there doesn't seem to be an easy way to throw EOB/TLAST on odd samples.We
>>>> also think it is not guaranteed that this will never happen from the radio.
>>>> Thoughts?
>>>>
>>>> Tim
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000d4844d05912ef984
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tim,<div><br></div><div>My mistake on my original reply=
, you should use push_pkt()/pull_pkt(). You provide the header to that func=
tion (along with the payload), which is how you will be able to set EOB and=
 a packet size with an odd number of 16-bit samples. If you really dig into=
 sim_rfnoc_lib.svh, sim_cvita_lib.svh, and noc_block_export_io.v, you&#39;l=
l see that push_pkt() interfaces with noc_shell not axi_wrapper. Even thoug=
h cvita_payload_t is a 64-bit wide queue, the packet size in the header is =
what matters. You&#39;ll also need to remove or modify line 236 in push_pkt=
() in sim_cvita_lib.svh, as that assertion checks if the header&#39;s packe=
t size is a multiple of 4 bytes.</div><div></div><div><br></div><div>Jonath=
on</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp &lt;<a href=3D"mailto:=
timothy.kurp@gmail.com">timothy.kurp@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Jon,=C2=
=A0<div><br></div><div>This doesn&#39;t answer my question, perhaps I didn&=
#39;t convey the problem clearly. I am trying to test the case where TLAST =
occurs on an odd sample, at the same time as EOB. Push word provides access=
 to tlast, but not EOB. To throw eob I need to use send() which takes in pk=
t.payload and pkt.header. I can manipulate eob in the metadata there.=C2=A0=
 pkt.payload is of type cvita_payload_t, which is 64 bits wide. Send() will=
 throw tlast at the end of the packet, which will always contain a multiple=
 of 2 complex samples since the payload is defined at 64 bits. That is my p=
roblem.=C2=A0 There is no way to throw eob and tlast on a packet that conta=
ins an odd number of i/q samples.</div><div><br></div><div>Tim</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Aug 27, 2019 at 12:21 AM Timothy Kurp &lt;<a href=3D"mailto:timothy.kurp@g=
mail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks! =
I will look at that example.<div><br></div><div>Tim</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 20=
19 at 12:15 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettu=
s.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Tim,=
<div><br></div><div>Look at noc_block_fft_tb.v for an example on how to ope=
rate on a 32-bit sample by sample basis. Unfortunately, if you want to do s=
izes smaller than 32-bit, you&#39;ll need to write your own version of send=
()/recv() or push_word()/pull_word() from sim_rfnoc_lib.svh.</div><div><br>=
</div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Users!<div><br></div><div=
>I think this may be a possible deficiency in the test bench architecture, =
or perhaps I just don&#39;t know how to instrument it properly. I have a cu=
stom block that performs a 2:1 rate change roughly, performing compression =
of the 16 bit I/Q from the radio down to a 16 bit word that is compressed, =
I won&#39;t describe how. There is a corner case if EOB occurs when there i=
s an odd number of samples received from the radio. I have handled this by =
using simple mode =3D 0, manipulating cvita header manually and throwing tl=
ast to make packets, with success. The noc block works, but I am struggling=
 with how to exercise the corner case in the testbench.</div><div><br></div=
><div>From what I have seen, the testbench only allows for EOB to be manipu=
lated on sample counts that are a multiple of 2 (send() operates on 64 bits=
, or 2 samples of 16 bit I/Q). We have looked at the source and there doesn=
&#39;t seem to be an easy way to throw EOB/TLAST on odd samples.We also thi=
nk it is not guaranteed that this will never happen from the radio. Thought=
s?</div><div><br></div><div>Tim</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000d4844d05912ef984--


--===============8787885544271727950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8787885544271727950==--

