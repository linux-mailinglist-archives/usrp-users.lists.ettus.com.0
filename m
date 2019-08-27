Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF219EFB7
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 18:07:51 +0200 (CEST)
Received: from [::1] (port=44028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2e0c-00050n-Ix; Tue, 27 Aug 2019 12:07:50 -0400
Received: from mail-ed1-f44.google.com ([209.85.208.44]:45515)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <timothy.kurp@gmail.com>)
 id 1i2e0Y-0004lp-8d
 for usrp-users@lists.ettus.com; Tue, 27 Aug 2019 12:07:46 -0400
Received: by mail-ed1-f44.google.com with SMTP id x19so32029890eda.12
 for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2019 09:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jf/y4qXoHDlPr9mR/vw4RIAwOlsBEJFcsKo8Ydw0AP4=;
 b=ih74y3GPGQWvFrHdO9DBR93GilgqmyLS+3pRXjUNqktyFtPJtJGCD1rO5G4kM1532U
 n9zAU7+w2kW77Zc+IIz9qxnRDpwHppX+vgSxS253T1GhpARifEHyM7g9emEWzNXMfUIr
 WQMYae3MBd4jWiEs6J6BOlvRGe3llu9dIVtJotV1B1j1mPlHxTB84F9oNTsGzHyEk6YX
 uCwE64f3vs8ChkUOD563dRkV9c7Mn9OHLpnfTlqIpmIvr+vp3Eg/P9vfibikh/LqO+gX
 ipYRO327emCkv+z6+VhFppx6uATIalPo8Nf8u8y6KbBJGuqwcSIZI0zIEiVG+CoAsXJQ
 vXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jf/y4qXoHDlPr9mR/vw4RIAwOlsBEJFcsKo8Ydw0AP4=;
 b=E5w7neNYLzCDyrbPshADa0jO50XudvKTMeTSqgp/8JJEswHk0DFTkhWdJOXZZb8bAZ
 ps1ZCOJWIu0WlYuDqnuvLPqiQ5PD7TLAtou4r+Q/9VgT0XxQm8aDatg67djfkjXpl6wM
 9/3svrSXkHZzHSw2sJyTAehNWD4peWv122MgEnXsgMDujMWuYcmNwACvJUST2IZ9VESB
 rCchUO0hQAlWTQNbBZHN0ZUDRT6yQTJr/s6QcqLbBZU5M65YJTS2sFtq8LmIc0YIHpsO
 eOXdsmuytguLctNC18sAyNWLIxwkiQy75Zl0dE5Cwgf9pEL4HtpuC+Hl2ZvOomdMHRTy
 9aOg==
X-Gm-Message-State: APjAAAUVa8CM2QnnEETN7SiZ1ZnL9ZX3aDRlYnUHRBYTeqUu63/cqfYf
 S3zigSOSzp78q7Xeq9UKLejF1TYiyO1SzKHtZLF4szMm
X-Google-Smtp-Source: APXvYqzzOK+RjHQ4ExJlO2n8pLD8w97yhIv3N3jWBumUhsa+3V6hYav6P19Y2fXgKZBVa8VIuIkV2XDAD1xOkiGjqgI=
X-Received: by 2002:aa7:c490:: with SMTP id m16mr25187582edq.156.1566922025185; 
 Tue, 27 Aug 2019 09:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
 <CAL7q81vDWQziDHbg8FoyE0frY63HnRV=04qUejq3-uS6RUTieA@mail.gmail.com>
 <CABsifTmn7kmMusP0miNJW2hPbu95cN=ZhAtpNqscwVG7kEZA3A@mail.gmail.com>
In-Reply-To: <CABsifTmn7kmMusP0miNJW2hPbu95cN=ZhAtpNqscwVG7kEZA3A@mail.gmail.com>
Date: Tue, 27 Aug 2019 12:06:54 -0400
Message-ID: <CABsifTk8doL0VhOP+=OP9EPuXxPNqA0kuXmyM-s=B8CZ9YyRmg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
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
From: Timothy Kurp via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Timothy Kurp <timothy.kurp@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2621707063109983269=="
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

--===============2621707063109983269==
Content-Type: multipart/alternative; boundary="000000000000b3b47705911b76c5"

--000000000000b3b47705911b76c5
Content-Type: text/plain; charset="UTF-8"

Hi Jon,

This doesn't answer my question, perhaps I didn't convey the problem
clearly. I am trying to test the case where TLAST occurs on an odd sample,
at the same time as EOB. Push word provides access to tlast, but not EOB.
To throw eob I need to use send() which takes in pkt.payload and
pkt.header. I can manipulate eob in the metadata there.  pkt.payload is of
type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at the
end of the packet, which will always contain a multiple of 2 complex
samples since the payload is defined at 64 bits. That is my problem.  There
is no way to throw eob and tlast on a packet that contains an odd number of
i/q samples.

Tim

On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp <timothy.kurp@gmail.com>
wrote:

> Thanks! I will look at that example.
>
> Tim
>
> On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Tim,
>>
>> Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
>> sample by sample basis. Unfortunately, if you want to do sizes smaller than
>> 32-bit, you'll need to write your own version of send()/recv() or
>> push_word()/pull_word() from sim_rfnoc_lib.svh.
>>
>> Jonathon
>>
>> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hey Users!
>>>
>>> I think this may be a possible deficiency in the test bench
>>> architecture, or perhaps I just don't know how to instrument it properly. I
>>> have a custom block that performs a 2:1 rate change roughly, performing
>>> compression of the 16 bit I/Q from the radio down to a 16 bit word that is
>>> compressed, I won't describe how. There is a corner case if EOB occurs when
>>> there is an odd number of samples received from the radio. I have handled
>>> this by using simple mode = 0, manipulating cvita header manually and
>>> throwing tlast to make packets, with success. The noc block works, but I am
>>> struggling with how to exercise the corner case in the testbench.
>>>
>>> From what I have seen, the testbench only allows for EOB to be
>>> manipulated on sample counts that are a multiple of 2 (send() operates on
>>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and
>>> there doesn't seem to be an easy way to throw EOB/TLAST on odd samples.We
>>> also think it is not guaranteed that this will never happen from the radio.
>>> Thoughts?
>>>
>>> Tim
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000b3b47705911b76c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jon,=C2=A0<div><br></div><div>This doesn&#39;t answer m=
y question, perhaps I didn&#39;t convey the problem clearly. I am trying to=
 test the case where TLAST occurs on an odd sample, at the same time as EOB=
. Push word provides access to tlast, but not EOB. To throw eob I need to u=
se send() which takes in pkt.payload and pkt.header. I can manipulate eob i=
n the metadata there.=C2=A0 pkt.payload is of type cvita_payload_t, which i=
s 64 bits wide. Send() will throw tlast at the end of the packet, which wil=
l always contain a multiple of 2 complex samples since the payload is defin=
ed at 64 bits. That is my problem.=C2=A0 There is no way to throw eob and t=
last on a packet that contains an odd number of i/q samples.</div><div><br>=
</div><div>Tim</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp &lt;<a hr=
ef=3D"mailto:timothy.kurp@gmail.com">timothy.kurp@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Thanks! I will look at that example.<div><br></div><div>Tim</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, A=
ug 27, 2019 at 12:15 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pen=
dlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi Tim,<div><br></div><div>Look at noc_block_fft_tb.v for an example on h=
ow to operate on a 32-bit sample by sample basis. Unfortunately, if you wan=
t to do sizes smaller than 32-bit, you&#39;ll need to write your own versio=
n of send()/recv() or push_word()/pull_word() from sim_rfnoc_lib.svh.</div>=
<div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 1:05 PM Timothy K=
urp via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Users!<div><br><=
/div><div>I think this may be a possible deficiency in the test bench archi=
tecture, or perhaps I just don&#39;t know how to instrument it properly. I =
have a custom block that performs a 2:1 rate change roughly, performing com=
pression of the 16 bit I/Q from the radio down to a 16 bit word that is com=
pressed, I won&#39;t describe how. There is a corner case if EOB occurs whe=
n there is an odd number of samples received from the radio. I have handled=
 this by using simple mode =3D 0, manipulating cvita header manually and th=
rowing tlast to make packets, with success. The noc block works, but I am s=
truggling with how to exercise the corner case in the testbench.</div><div>=
<br></div><div>From what I have seen, the testbench only allows for EOB to =
be manipulated on sample counts that are a multiple of 2 (send() operates o=
n 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and th=
ere doesn&#39;t seem to be an easy way to throw EOB/TLAST on odd samples.We=
 also think it is not guaranteed that this will never happen from the radio=
. Thoughts?</div><div><br></div><div>Tim</div></div>
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

--000000000000b3b47705911b76c5--


--===============2621707063109983269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2621707063109983269==--

