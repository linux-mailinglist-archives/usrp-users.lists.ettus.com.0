Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D5FA0660
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2019 17:33:01 +0200 (CEST)
Received: from [::1] (port=43276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2zwR-0000tt-Fk; Wed, 28 Aug 2019 11:32:59 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:38834)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <timothy.kurp@gmail.com>)
 id 1i2zwN-0000mJ-M9
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 11:32:55 -0400
Received: by mail-ed1-f47.google.com with SMTP id r12so508813edo.5
 for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2019 08:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z1O1vQ/fzVrUL3Zmp+truHXg2+0vLSbJ9sI6QCrDUGM=;
 b=UoB45gQnCJSObjZDOrKcFXhNpHSJWkIPOnR1WA0F0Z59D5AA4v+46pFs4pJcpEmuzi
 ncHT05K6Ieew9jDzcvIbhU5C/0UUccAa19i1CQ9VAxMw7hyKmPJVJDJaN9jQeMulKvIC
 /nEDQLiVqykUjO1HzvU2Qk7k6PAclvfFMUMmvwEdZp020TJ5sVIi8FhaNEMuRPz2Mrh/
 BhU+WB7nWTrIzGEzGBmI/Wfq+Uwr1ORIUki7EoJStvI2eGOw1Lqrl1aYqseLtVjcY0O0
 SJM7yXB/B/7HZ4riaSggYmV3bsclHOrcYRGYpeEXN2k4Iap6uxCY0B+jtHwm86+STygD
 IUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z1O1vQ/fzVrUL3Zmp+truHXg2+0vLSbJ9sI6QCrDUGM=;
 b=fNV3JkrzM+Ql3wPx8q+9sT1ErwgeyyndUph2GtrPDXXhmjKu+T4rvXnhLh+lK+vy/D
 ARSWtbQ0JgKcIy5JSOjgXJbsdyOt1a0kstrttzObN5KcFz8LlKa0/5QvJdmhwCpAXLWw
 eqIfkjK8qwgODXQ5SZ9M4DRXNuPRRO4V7HNTI3or2uQobzeRTnt10b+H+GaY3Wd6PC2d
 SWv9fHwtA+tbLhr1BBAeNa4rUoC0ZjLJEn7lf9u31wwZWBHYaMX0vPV1sUqD9WeltgGO
 RcHJ5pLHMBUSvnVO0aysG6BzoU/pQm0ay8uP37q3t/2y1OAxvNQBkiDwNvNZ+xVT8kUR
 fSvA==
X-Gm-Message-State: APjAAAXMUsk7wI0Z05HckonuQj9ka9NB1RGdhjmv6Zqw9oYwt42XwlVS
 LuinRpFYeZnU7oA7qrsas6WSfhVvSVKgQ/W3uHM=
X-Google-Smtp-Source: APXvYqxtjPreHfK3AFUtU+pUu/7RLPOuXIDdElTi+23zu12ES1rI3gTZkmxjJH14Wp+vbw9R764Ipt+PsjjGMv25Eg0=
X-Received: by 2002:a17:906:e252:: with SMTP id
 gq18mr3840606ejb.38.1567006334477; 
 Wed, 28 Aug 2019 08:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
 <CAL7q81vDWQziDHbg8FoyE0frY63HnRV=04qUejq3-uS6RUTieA@mail.gmail.com>
 <CABsifTmn7kmMusP0miNJW2hPbu95cN=ZhAtpNqscwVG7kEZA3A@mail.gmail.com>
 <CABsifTk8doL0VhOP+=OP9EPuXxPNqA0kuXmyM-s=B8CZ9YyRmg@mail.gmail.com>
 <CAL7q81vNQFzbHh3iVbrBkpbjoteN2Qwnp2YwCeRa+uT9kozpaw@mail.gmail.com>
In-Reply-To: <CAL7q81vNQFzbHh3iVbrBkpbjoteN2Qwnp2YwCeRa+uT9kozpaw@mail.gmail.com>
Date: Wed, 28 Aug 2019 11:32:03 -0400
Message-ID: <CABsifT=GitkqEFU8++RxDTrqYbuCW_UC-kbDq8dx8giB0ocPyw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2637630997896402482=="
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

--===============2637630997896402482==
Content-Type: multipart/alternative; boundary="000000000000ed68bf05912f178a"

--000000000000ed68bf05912f178a
Content-Type: text/plain; charset="UTF-8"

That sounds like it will do it. Thanks!

Tim

On Wed, Aug 28, 2019 at 11:23 AM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hi Tim,
>
> My mistake on my original reply, you should use push_pkt()/pull_pkt(). You
> provide the header to that function (along with the payload), which is how
> you will be able to set EOB and a packet size with an odd number of 16-bit
> samples. If you really dig into sim_rfnoc_lib.svh, sim_cvita_lib.svh, and
> noc_block_export_io.v, you'll see that push_pkt() interfaces with noc_shell
> not axi_wrapper. Even though cvita_payload_t is a 64-bit wide queue, the
> packet size in the header is what matters. You'll also need to remove or
> modify line 236 in push_pkt() in sim_cvita_lib.svh, as that assertion
> checks if the header's packet size is a multiple of 4 bytes.
>
> Jonathon
>
> On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp <timothy.kurp@gmail.com>
> wrote:
>
>> Hi Jon,
>>
>> This doesn't answer my question, perhaps I didn't convey the problem
>> clearly. I am trying to test the case where TLAST occurs on an odd sample,
>> at the same time as EOB. Push word provides access to tlast, but not EOB.
>> To throw eob I need to use send() which takes in pkt.payload and
>> pkt.header. I can manipulate eob in the metadata there.  pkt.payload is of
>> type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at the
>> end of the packet, which will always contain a multiple of 2 complex
>> samples since the payload is defined at 64 bits. That is my problem.  There
>> is no way to throw eob and tlast on a packet that contains an odd number of
>> i/q samples.
>>
>> Tim
>>
>> On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp <timothy.kurp@gmail.com>
>> wrote:
>>
>>> Thanks! I will look at that example.
>>>
>>> Tim
>>>
>>> On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi Tim,
>>>>
>>>> Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
>>>> sample by sample basis. Unfortunately, if you want to do sizes smaller than
>>>> 32-bit, you'll need to write your own version of send()/recv() or
>>>> push_word()/pull_word() from sim_rfnoc_lib.svh.
>>>>
>>>> Jonathon
>>>>
>>>> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hey Users!
>>>>>
>>>>> I think this may be a possible deficiency in the test bench
>>>>> architecture, or perhaps I just don't know how to instrument it properly. I
>>>>> have a custom block that performs a 2:1 rate change roughly, performing
>>>>> compression of the 16 bit I/Q from the radio down to a 16 bit word that is
>>>>> compressed, I won't describe how. There is a corner case if EOB occurs when
>>>>> there is an odd number of samples received from the radio. I have handled
>>>>> this by using simple mode = 0, manipulating cvita header manually and
>>>>> throwing tlast to make packets, with success. The noc block works, but I am
>>>>> struggling with how to exercise the corner case in the testbench.
>>>>>
>>>>> From what I have seen, the testbench only allows for EOB to be
>>>>> manipulated on sample counts that are a multiple of 2 (send() operates on
>>>>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and
>>>>> there doesn't seem to be an easy way to throw EOB/TLAST on odd samples.We
>>>>> also think it is not guaranteed that this will never happen from the radio.
>>>>> Thoughts?
>>>>>
>>>>> Tim
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>

--000000000000ed68bf05912f178a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That sounds like it will do it. Thanks!<div><br></div><div=
>Tim</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Aug 28, 2019 at 11:23 AM Jonathon Pendlum &lt;<a href=3D"=
mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hi Tim,<div><br></div><div>My mistake on my original reply, you should u=
se push_pkt()/pull_pkt(). You provide the header to that function (along wi=
th the payload), which is how you will be able to set EOB and a packet size=
 with an odd number of 16-bit samples. If you really dig into sim_rfnoc_lib=
.svh, sim_cvita_lib.svh, and noc_block_export_io.v, you&#39;ll see that pus=
h_pkt() interfaces with noc_shell not axi_wrapper. Even though cvita_payloa=
d_t is a 64-bit wide queue, the packet size in the header is what matters. =
You&#39;ll also need to remove or modify line 236 in push_pkt() in sim_cvit=
a_lib.svh, as that assertion checks if the header&#39;s packet size is a mu=
ltiple of 4 bytes.</div><div></div><div><br></div><div>Jonathon</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Aug 28, 2019 at 1:07 AM Timothy Kurp &lt;<a href=3D"mailto:timothy.kurp@g=
mail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Jon,=
=C2=A0<div><br></div><div>This doesn&#39;t answer my question, perhaps I di=
dn&#39;t convey the problem clearly. I am trying to test the case where TLA=
ST occurs on an odd sample, at the same time as EOB. Push word provides acc=
ess to tlast, but not EOB. To throw eob I need to use send() which takes in=
 pkt.payload and pkt.header. I can manipulate eob in the metadata there.=C2=
=A0 pkt.payload is of type cvita_payload_t, which is 64 bits wide. Send() w=
ill throw tlast at the end of the packet, which will always contain a multi=
ple of 2 complex samples since the payload is defined at 64 bits. That is m=
y problem.=C2=A0 There is no way to throw eob and tlast on a packet that co=
ntains an odd number of i/q samples.</div><div><br></div><div>Tim</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Aug 27, 2019 at 12:21 AM Timothy Kurp &lt;<a href=3D"mailto:timothy.kur=
p@gmail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thank=
s! I will look at that example.<div><br></div><div>Tim</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27,=
 2019 at 12:15 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@e=
ttus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi T=
im,<div><br></div><div>Look at noc_block_fft_tb.v for an example on how to =
operate on a 32-bit sample by sample basis. Unfortunately, if you want to d=
o sizes smaller than 32-bit, you&#39;ll need to write your own version of s=
end()/recv() or push_word()/pull_word() from sim_rfnoc_lib.svh.</div><div><=
br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Users!<div><br></div=
><div>I think this may be a possible deficiency in the test bench architect=
ure, or perhaps I just don&#39;t know how to instrument it properly. I have=
 a custom block that performs a 2:1 rate change roughly, performing compres=
sion of the 16 bit I/Q from the radio down to a 16 bit word that is compres=
sed, I won&#39;t describe how. There is a corner case if EOB occurs when th=
ere is an odd number of samples received from the radio. I have handled thi=
s by using simple mode =3D 0, manipulating cvita header manually and throwi=
ng tlast to make packets, with success. The noc block works, but I am strug=
gling with how to exercise the corner case in the testbench.</div><div><br>=
</div><div>From what I have seen, the testbench only allows for EOB to be m=
anipulated on sample counts that are a multiple of 2 (send() operates on 64=
 bits, or 2 samples of 16 bit I/Q). We have looked at the source and there =
doesn&#39;t seem to be an easy way to throw EOB/TLAST on odd samples.We als=
o think it is not guaranteed that this will never happen from the radio. Th=
oughts?</div><div><br></div><div>Tim</div></div>
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
</blockquote></div>

--000000000000ed68bf05912f178a--


--===============2637630997896402482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2637630997896402482==--

