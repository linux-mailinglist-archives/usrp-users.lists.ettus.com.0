Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82656A92658
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 20:12:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 497CB3862A6
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 14:12:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744913553; bh=nq2qHrfHJgCtmSPQrFizImXmhbe8pnPPYvfiaK29ggk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=piBbZCUOBazeFxCNXotuH6uX2OUvNug885aWCi8Juuu4PZPZh8myS55CNUw4DV30K
	 DqVoUxZBAupbeFrkaB/6dkhau3vVUOkZ/GdczkefjVn515pZeIiIcttiYI8747703D
	 0jVjPR7R+qrpUHeOfsx4d7d86lTEa8bbO/0cxxwOCfDeOn4ewpJEDmA5pxt24t1jKO
	 9hpLfLNqW86IGmwmXbZzXvwZNa4qp4bp089IyCl0liMZyJSWYAQffK7h/+R++iw0AV
	 vjuVNZnYODOzRCb5y3UJ7mnRKDa6wef5LbKdVVrDNODofXBbYMo1n8goS9DbWHTwea
	 j6/NkRffCAyLA==
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 177863860E7
	for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 14:11:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QESBlzNs";
	dkim-atps=neutral
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so1154216f8f.3
        for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 11:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744913517; x=1745518317; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o52jvXwuzWZ6BCc0rQnNNbr1ZeA5ckIr41vM96fnce0=;
        b=QESBlzNsvf0WcybIRbeL2bvRJQWrQ7TBnwObHdPgVqN+kTXk5JGyrW92GqOk54fGYp
         8LZ+Cz27D6ovKazNiqbSq6pKZi6LTGUnMDunc4MdWGzG1zZaF/Ttx/26c6ez5DycUQY6
         BQ/c2IK9CHbmtQMD5ZcQBHjl+2h2c8U/vVebFwn/Cs7erY6qs29mkRWTfVw0jh2zdpct
         qIhancKXcuAoqZvJiTYCa0o3HZHdUd1MedhdmDdCLmMC7/JJgCO8O9G4ytkvR4wdY8ZU
         AN9JCxIqEY/QuLIU/vvBCiCNS6AYNRAbDmPwsgkIE3TcADjh3DB+Iz7Aw4thQkts97Jr
         CXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744913517; x=1745518317;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o52jvXwuzWZ6BCc0rQnNNbr1ZeA5ckIr41vM96fnce0=;
        b=KFzXeJlEqE1X5OsirZsbPM7ndpKmKfA/t6ANL4TDJT2aGqGwYOjA5GKtzkU54SL4IR
         q375NHayk1Qag4T0CC6HxouPYnM1AHwONIL/FlrHuVohha9je6zok7KT4bXkQG0KkfDy
         LMQYOdTQJNhlQEcd+vsso90FrTo+mElVut5I6byTRRsADFLr/cqI4bEgWxSR1fM1X9BS
         7dNC9MfVPGhPgFzBZ731YllVPk4HQFvsqf/HZEanQy17Q2Oi5uWrVxoTG6bkELutnzdb
         x3kw6OlDuYdGwVivQ/SAsAuXScxOX/fugXinRFgrQAKEfD/3Fj0ZQzEXSdWpJkhEDItP
         xeeg==
X-Forwarded-Encrypted: i=1; AJvYcCUFLPiqskBCeGMQ5Nan6npDWgyKx4X0raLVrPCcH9+vAFHhylFpy2XKZqtnw8p8vcoFBDvXqkf7bfMs@lists.ettus.com
X-Gm-Message-State: AOJu0YwH/AGx1X1iFXzkRh4lSta1tXcDBRiI4AAZn5aaAMaN1rXx9KfD
	huIjAAtGoKbtnQvufctLF1gR3SnAi+qEdZPmEaHakJ+gWmhKLVRnnQe1M0eTDvBx/G0vl4Pcq1t
	eS8817g3uJqnYbIEftbg9sfU2oVc=
X-Gm-Gg: ASbGnctn992fTSIikWjiMXsBFEKL3OL6LEZQIRqeiprRhyS7VxP3hZ6ynYb7GUbAg2h
	jQL9XGYv0ki7+leM9AElHxabT+FKQsqHH5zCr1U78SPQWBx3JDc6Ej4s80Q1jfWwYMwrNXsmK7X
	NX71AkocwIK8TZ56z6C7cRUNCXMBWgmFxL
X-Google-Smtp-Source: AGHT+IEN+cFaZZGTcAnb4MIbVcNH9C7Ymgxhd3YRRWVG6MXkpCSt3FAu+vvt1JOVomsM6hHHJiceUtxNSSr3XskuUsw=
X-Received: by 2002:a05:6000:2404:b0:39c:dfa:ca71 with SMTP id
 ffacd0b85a97d-39ee5b9f5f5mr5666338f8f.49.1744913516508; Thu, 17 Apr 2025
 11:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
 <CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1ZRc4nBzeuoqnoQD65Q@mail.gmail.com>
 <2337446d-6990-490a-bf2c-899f8f738f32@student.uclouvain.be>
 <CAB__hTRP0s1DpWcLXXQZAS2uQVF3--m0knXVqhNHSC2Zu5eabQ@mail.gmail.com> <af8643b5-4f97-4290-b2cf-f3766a39f7b7@student.uclouvain.be>
In-Reply-To: <af8643b5-4f97-4290-b2cf-f3766a39f7b7@student.uclouvain.be>
From: David <vitishlsfan21@gmail.com>
Date: Thu, 17 Apr 2025 11:13:22 -0700
X-Gm-Features: ATxdqUFrs6xU_-xwnD6Zi1kpdOxsYHX_qbJvvn3a4_cz4MONG9o3781nTFFRiPY
Message-ID: <CAE=q3UPc7e41XvW0C-Z9-ABy84rvNP3CFcp-6+6n=6QOiMVePw@mail.gmail.com>
To: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Message-ID-Hash: OX4MYSP3LYTFIIIJCLJT4S5TOEW5F7QF
X-Message-ID-Hash: OX4MYSP3LYTFIIIJCLJT4S5TOEW5F7QF
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with AXI-Stream Output in Schmidl & Cox RFNoC Module: deadlock when marking some samples as no valid
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OX4MYSP3LYTFIIIJCLJT4S5TOEW5F7QF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8750553875023133595=="

--===============8750553875023133595==
Content-Type: multipart/related; boundary="00000000000050f8490632fd56ee"

--00000000000050f8490632fd56ee
Content-Type: multipart/alternative; boundary="00000000000050f8470632fd56ed"

--00000000000050f8470632fd56ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quentin,

Before proceeding, make sure you *backup your verilog implementation*
because changing to the axis-data interface will *delete the block verilog
folder* you have been working in (testbench, block code, Makefile, etc).

The information below is based on the rfnoc spec (
https://files.ettus.com/app_notes/RFNoC_Specification.pdf) section 4.2.2

You will need to change the block description YAML file to have an
axis-data interface, then run the create_verilog.py
(uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py) script. An example
is shown below of the minimum change needed for an axis-data interface:

[image: image.png]

After running the create_verilog script the new block will have the signals
Rob mentioned. These will be at the noc_shell module interface, with some
new clock names:

[image: image.png]

Thanks,

David


On Thu, Apr 17, 2025 at 10:17=E2=80=AFAM Quentin Prieels <
quentin.prieels@student.uclouvain.be> wrote:

> I just read a bit more about the "Sideband-At-End" signal, and it could
> indeed be the issue. However, I don't see this signal (nor tlength,
> ttimestamp, has_time, teov, or teob) in my current block definition. This
> definition was auto-generated by *rfnoc_modtool*, similar to the one in
> the gain example. Do you know how I can enable or configure this
> Sideband-At-End in UHD 4.8?
>
> You're also right =E2=80=94 I added a custom is_last_sample signal to mar=
k the
> last sample of my OFDM frame, in case it doesn=E2=80=99t align with a tru=
e end
> symbol in RFNoC.
>
> If needed, here=E2=80=99s my current block definition:
>
> https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/rfnoc=
/blocks/schmidl_cox.yml
> Quentin
> On 4/17/25 18:40, Rob Kossler wrote:
>
>
> Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 partir de rkos=
sler@nd.edu. Pourquoi
> c=E2=80=99est important <https://aka.ms/LearnAboutSenderIdentification>
>
> OK. The AXI-Stream Data (simple) interface is the easiest for this case i=
n
> my opinion.  Are you using "Sideband-At-End" in order to have the "tlengt=
h"
> automatically calculated?
>
> You need to set "tlast" like you mentioned. This is critical and not
> always easy. Remember that the CHDR packet can only be about 2000 samples
> whereas an OFDM packet might be longer. So, your idea about preserving th=
e
> tlast from the input stream is probably needed.  You also probably want t=
o
> preserve teob from the input unless you are also detecting your own end o=
f
> burst in which case you need logic to set this on the final packet and yo=
u
> need to set tlast on the last sample because the input packets will likel=
y
> not have tlast set on this sample.
>
> Note that in the past I have used "axi_rate_change" in a block such as
> yours (my block was a pulse detection block based on power) because in
> addition to handling a true rate change (which you don't need), it also
> takes care of re-packetizing the data.  This allows your own logic to not
> worry about RFNoC packets.  But, switching to use this module might be mo=
re
> of a headache than just handling the RFNoC packets with your own logic.
>
> For the question you asked about receiving a new CHDR packet if an output
> packet has not been produced, I think the answer is Yes, this is no probl=
em.
> Rob
>
> On Thu, Apr 17, 2025 at 12:16=E2=80=AFPM Quentin Prieels <
> quentin.prieels@student.uclouvain.be> wrote:
>
>> Hi Rob,
>>
>> I'm not sure. I also tried forwarding the tlast signal of the original
>> tdata samples to force the system to send a CHDR packet=E2=80=94even if =
my OFDM
>> packet wasn't finished yet=E2=80=94but it doesn=E2=80=99t seem to solve =
the issue.
>>
>> Another question I=E2=80=99ve been asking myself is:* does RFNoC allow a=
 block
>> to receive a new incoming CHDR packet if it hasn=E2=80=99t yet produced =
an outgoing
>> packet*?
>>
>> I'm using the AXI-Stream Data (Simple) interface, so I assume the NoC
>> shell handles packet manipulation and length. I don't see where I could
>> modify this behavior...
>>
>> If you have any ideas or insights, I=E2=80=99d be happy to investigate f=
urther.
>>
>> Best regards,
>> Quentin
>>
>> On 4/17/25 17:58, Rob Kossler wrote:
>>
>>
>> Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 partir de rko=
ssler@nd.edu. Pourquoi
>> c=E2=80=99est important <https://aka.ms/LearnAboutSenderIdentification>
>>
>> Hi Quentin,
>> Perhaps your issue is related to the 'length' parameter of the RFNoC
>> packet?  If you are not correcting the packet length based on the number=
 of
>> samples you are dropping, then you will get ill-formed packets coming ou=
t.
>> Do you think that this could be the issue?
>> Rob
>>
>> On Thu, Apr 17, 2025 at 11:40=E2=80=AFAM Quentin Prieels <
>> quentin.prieels@student.uclouvain.be> wrote:
>>
>>> Hello everyone,
>>>
>>> I'm currently implementing a Schmidl & Cox OOT module on a USRP X310 as
>>> part of my master's thesis. (For those interested, the code is availabl=
e
>>> here
>>> <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latency> (
>>> https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency).)
>>>
>>> The purpose of this block is to detect the beginning of an OFDM frame =
=E2=80=94
>>> specifically, just after the Schmidl & Cox preamble. I want the block t=
o
>>> forward *only* the "valid" samples (i.e., those that are part of the
>>> actual OFDM frame). So when I call rx_stream->recv(), only actual data
>>> packets should be received by my UHD application.
>>> My first idea was to control the tvalid signal of the AXI-Stream
>>> interface: setting it to 0 when the data was not a "valid" OFDM sample,
>>> and asserting it (1) only when the data was valid. However, this seems
>>> to cause some kind of deadlock. My UHD application always times out and
>>> receives no data. Interestingly, when I output zero-valued samples inst=
ead
>>> of deasserting the tvalid signal, I can see that my synchronization
>>> mechanism is working as expected. This suggests the issue likely lies i=
n my
>>> use of AXI signals or a misunderstanding of the RFNoC protocol.
>>>
>>> *Note*: my configured SPP (samples per packet, here 200) is smaller
>>> than the length of the actual OFDM frame, which consists of thousands o=
f
>>> complex samples.
>>>
>>> So here's my main question:
>>> Given a continuous stream of data (currently configured as packets with
>>> 200 samples each, where every packet is valid), how can I output *only
>>> a subset* of this stream =E2=80=94 a specific sequence of continuous sa=
mples
>>> (potentially spread across multiple packets) =E2=80=94 such that only t=
his valid
>>> subset is received by the UHD application? Alternatively, how can I mar=
k
>>> only part of the stream as valid for the receiver, while discarding the
>>> rest?
>>>
>>> (For those interested in the code, this behavior corresponds to when
>>> output_select is set to 2'b01 in the following module: detector.sv
>>> <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fp=
ga/ofdm/rfnoc_block_schmidl_cox/detector.sv>
>>> (
>>> https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpg=
a/ofdm/rfnoc_block_schmidl_cox/detector.sv)
>>> , which controls forwarding of input data only when in the FORWARDING
>>> state.)
>>>
>>> Thank you all for your help,
>>> Quentin
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000050f8470632fd56ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Quentin,=C2=A0<div><br></div><div>Before proceeding, make =
sure you <b>backup your verilog implementation</b> because changing to the =
axis-data interface will <b>delete the block verilog folder</b> you have be=
en working in (testbench, block code, Makefile, etc).</div><div><br></div><=
div>The information below is based on the rfnoc spec (<a href=3D"https://fi=
les.ettus.com/app_notes/RFNoC_Specification.pdf">https://files.ettus.com/ap=
p_notes/RFNoC_Specification.pdf</a>) section 4.2.2</div><div><br></div><div=
>You will need to change the block description YAML file to have an axis-da=
ta interface, then run the create_verilog.py (uhd/host/utils/rfnoc_blocktoo=
l/rfnoc_create_verilog.py) script. An example is shown below of the minimum=
 change needed for an axis-data interface:</div><div><br></div><div><img sr=
c=3D"cid:ii_m9lo5z910" alt=3D"image.png" width=3D"268" height=3D"296"><br><=
/div><div><br></div><div>After running the create_verilog script the new bl=
ock will have the signals Rob mentioned. These will be at the noc_shell mod=
ule interface, with some new clock names:</div><div><br></div><div><img src=
=3D"cid:ii_m9lod5w51" alt=3D"image.png" width=3D"423" height=3D"348"><br></=
div><div><br></div><div>Thanks,</div><div><br></div><div>David</div><div><b=
r></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at 10:17=E2=80=AFAM Quen=
tin Prieels &lt;<a href=3D"mailto:quentin.prieels@student.uclouvain.be">que=
ntin.prieels@student.uclouvain.be</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><u></u>

 =20
  <div>
    <p><font face=3D"Aptos">I
        just read a bit more about the &quot;Sideband-At-End&quot; signal, =
and it
        could indeed be the issue. However, I don&#39;t see this signal (no=
r
        <code>tlength</code>, <code>ttimestamp</code>, <code>has_time</code=
>, <code>teov</code>, or <code>teob</code>) in my current
        block definition. This definition was auto-generated by <i>rfnoc_mo=
dtool</i>,
        similar to the one in the gain example. Do you know how I can
        enable or configure this Sideband-At-End in UHD 4.8?</font></p>
    <p><font face=3D"Aptos">You&#39;re
        also right =E2=80=94 I added a custom <code>is_last_sample</code> s=
ignal to mark the last
        sample of my OFDM frame, in case it doesn=E2=80=99t align with a tr=
ue
        end symbol in RFNoC.</font></p>
    <p><font face=3D"Aptos">If
        needed, here=E2=80=99s my current block definition:<br>
      </font>
      <font face=3D"Aptos"><a rel=3D"noopener" href=3D"https://github.com/q=
uentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/rfnoc/blocks/schmidl_cox.ym=
l" target=3D"_blank">https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm=
/blob/latency/rfnoc/blocks/schmidl_cox.yml</a><br>
        Quentin</font></p>
    <div>On 4/17/25 18:40, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%=
" style=3D"background:revert;color:revert;direction:revert;font-size:revert=
;height:revert;letter-spacing:revert;line-height:revert;margin:revert;opaci=
ty:revert;outline:revert;overflow:revert;padding:revert;text-align:revert;t=
ext-indent:revert;text-orientation:revert;text-overflow:revert;text-transfo=
rm:revert;vertical-align:revert;white-space:revert;word-break:revert;word-s=
pacing:revert;writing-mode:revert;zoom:revert;border:0px;display:table;widt=
h:100%;table-layout:fixed;float:none;border-spacing:0px" align=3D"left">
        <tbody style=3D"background:revert;border:revert;color:revert;direct=
ion:revert;font-size:revert;height:revert;letter-spacing:revert;line-height=
:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;padding=
:revert;table-layout:revert;text-align:revert;text-indent:revert;text-orien=
tation:revert;text-overflow:revert;text-transform:revert;vertical-align:rev=
ert;white-space:revert;width:revert;word-break:revert;word-spacing:revert;w=
riting-mode:revert;zoom:revert;display:block">
          <tr style=3D"background:revert;border:revert;color:revert;directi=
on:revert;display:revert;font-size:revert;height:revert;letter-spacing:reve=
rt;line-height:revert;margin:revert;opacity:revert;outline:revert;overflow:=
revert;padding:revert;table-layout:revert;text-align:revert;text-indent:rev=
ert;text-orientation:revert;text-overflow:revert;text-transform:revert;vert=
ical-align:revert;white-space:revert;width:revert;word-break:revert;word-sp=
acing:revert;writing-mode:revert;zoom:revert">
            <td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpad=
ding=3D"7px 2px 7px 2px" style=3D"background-image:revert;background-positi=
on:revert;background-size:revert;background-repeat:revert;background-origin=
:revert;background-clip:revert;border:revert;color:revert;direction:revert;=
display:revert;font-size:revert;height:revert;letter-spacing:revert;line-he=
ight:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;tab=
le-layout:revert;text-align:revert;text-indent:revert;text-orientation:reve=
rt;text-overflow:revert;text-transform:revert;vertical-align:revert;white-s=
pace:revert;word-break:revert;word-spacing:revert;writing-mode:revert;zoom:=
revert;padding:7px 2px;background-color:rgb(166,166,166);width:0px">
              <br>
            </td>
            <td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpa=
dding=3D"7px 5px 7px 15px" color=3D"#212121" style=3D"background-image:reve=
rt;background-position:revert;background-size:revert;background-repeat:reve=
rt;background-origin:revert;background-clip:revert;border:revert;direction:=
revert;display:revert;height:revert;letter-spacing:revert;line-height:rever=
t;margin:revert;opacity:revert;outline:revert;overflow:revert;table-layout:=
revert;text-indent:revert;text-orientation:revert;text-overflow:revert;text=
-transform:revert;vertical-align:revert;white-space:revert;word-break:rever=
t;word-spacing:revert;writing-mode:revert;zoom:revert;width:100%;background=
-color:rgb(234,234,234);padding:7px 5px 7px 15px;font-family:wf_segoe-ui_no=
rmal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font=
-size:12px;font-weight:normal;color:rgb(33,33,33);text-align:left">
              <div style=3D"background:revert;border:revert;color:revert;di=
rection:revert;display:revert;font-size:revert;height:revert;letter-spacing=
:revert;line-height:revert;margin:revert;opacity:revert;outline:revert;over=
flow:revert;padding:revert;table-layout:revert;text-align:revert;text-inden=
t:revert;text-orientation:revert;text-overflow:revert;text-transform:revert=
;vertical-align:revert;white-space:revert;width:revert;word-break:revert;wo=
rd-spacing:revert;writing-mode:revert;zoom:revert">
                Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 =
partir de
                <a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossl=
er@nd.edu</a>. <a href=3D"https://aka.ms/LearnAboutSenderIdentification" st=
yle=3D"background:revert;color:revert;direction:revert;display:revert;font-=
size:revert;opacity:revert" target=3D"_blank">
                  Pourquoi c=E2=80=99est important</a> </div>
            </td>
            <td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"=
#EAEAEA" cellpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"backgro=
und-image:revert;background-position:revert;background-size:revert;backgrou=
nd-repeat:revert;background-origin:revert;background-clip:revert;border:rev=
ert;direction:revert;display:revert;height:revert;letter-spacing:revert;lin=
e-height:revert;margin:revert;opacity:revert;outline:revert;overflow:revert=
;table-layout:revert;text-indent:revert;text-orientation:revert;text-overfl=
ow:revert;text-transform:revert;vertical-align:revert;white-space:revert;wo=
rd-break:revert;word-spacing:revert;writing-mode:revert;zoom:revert;width:7=
5px;background-color:rgb(234,234,234);padding:7px 5px;font-family:wf_segoe-=
ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif=
;font-size:12px;font-weight:normal;color:rgb(33,33,33);text-align:left">
              <br>
            </td>
          </tr>
        </tbody>
      </table>
      <div>
        <div dir=3D"ltr">
          <div>OK. The AXI-Stream Data (simple) interface is the easiest
            for this case in my opinion.=C2=A0 Are you using
            &quot;Sideband-At-End&quot; in order to have the &quot;tlength&=
quot;
            automatically calculated?</div>
          <div><br>
          </div>
          <div>You need to set &quot;tlast&quot; like you mentioned. This i=
s
            critical and not always easy. Remember that the CHDR packet
            can only be about 2000 samples whereas an OFDM packet might
            be longer. So, your idea about preserving the tlast from the
            input stream is probably needed.=C2=A0 You also probably want t=
o
            preserve teob from the input unless you are also detecting
            your own end of burst in which case you need logic to set
            this on the final packet and you need to set tlast on the
            last sample because the input packets will likely not have
            tlast set on this sample.</div>
          <div><br>
          </div>
          <div>Note that in the past I have used &quot;axi_rate_change&quot=
; in a
            block such as yours (my block was a pulse detection block
            based on power) because in addition to handling a true rate
            change (which you don&#39;t need), it also takes care of
            re-packetizing the data.=C2=A0 This allows your own logic to no=
t
            worry about RFNoC packets.=C2=A0 But, switching to use this
            module might be more of a headache than just handling the
            RFNoC packets with your own logic.=C2=A0</div>
          <div><br>
          </div>
          <div>For the question you asked about=C2=A0receiving a new CHDR
            packet if an output packet has not been produced, I think
            the answer is Yes, this is no problem.</div>
          <div>Rob</div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at
              12:16=E2=80=AFPM Quentin Prieels &lt;<a href=3D"mailto:quenti=
n.prieels@student.uclouvain.be" target=3D"_blank">quentin.prieels@student.u=
clouvain.be</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div>
                <p><font face=3D"Aptos">Hi Rob,</font></p>
                <p><font face=3D"Aptos">I&#39;m not sure. I also tried
                    forwarding the <code>tlast</code> signal of the
                    original
                    <code>tdata</code> samples to force the system to
                    send a CHDR packet=E2=80=94even if my OFDM packet wasn&=
#39;t
                    finished yet=E2=80=94but it doesn=E2=80=99t seem to sol=
ve the issue.</font></p>
                <p><font face=3D"Aptos">Another question I=E2=80=99ve been =
asking
                    myself is:<i> does RFNoC allow a block to receive a
                      new incoming CHDR packet if it hasn=E2=80=99t yet pro=
duced
                      an outgoing packet</i>?</font></p>
                <p><font face=3D"Aptos">I&#39;m using the AXI-Stream Data
                    (Simple) interface, so I assume the NoC shell
                    handles packet manipulation and length. I don&#39;t see
                    where I could modify this behavior...</font></p>
                <p><font face=3D"Aptos">If you have any ideas or insights,
                    I=E2=80=99d be happy to investigate further.</font></p>
                <p><font face=3D"Aptos">Best regards,<br>
                    Quentin<br>
                  </font><br>
                  On 4/17/25 17:58, Rob Kossler wrote:</p>
                <blockquote type=3D"cite">
                  <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" style=3D"background:revert;color:revert;direction:revert;font=
-size:revert;height:revert;letter-spacing:revert;line-height:revert;margin:=
revert;opacity:revert;outline:revert;overflow:revert;padding:revert;text-al=
ign:revert;text-indent:revert;text-orientation:revert;text-overflow:revert;=
text-transform:revert;vertical-align:revert;white-space:revert;word-break:r=
evert;word-spacing:revert;writing-mode:revert;zoom:revert;border:0px;displa=
y:table;width:100%;table-layout:fixed;float:none;border-spacing:0px" align=
=3D"left">
                    <tbody style=3D"background:revert;border:revert;color:r=
evert;direction:revert;font-size:revert;height:revert;letter-spacing:revert=
;line-height:revert;margin:revert;opacity:revert;outline:revert;overflow:re=
vert;padding:revert;table-layout:revert;text-align:revert;text-indent:rever=
t;text-orientation:revert;text-overflow:revert;text-transform:revert;vertic=
al-align:revert;white-space:revert;width:revert;word-break:revert;word-spac=
ing:revert;writing-mode:revert;zoom:revert;display:block">
                      <tr style=3D"background:revert;border:revert;color:re=
vert;direction:revert;display:revert;font-size:revert;height:revert;letter-=
spacing:revert;line-height:revert;margin:revert;opacity:revert;outline:reve=
rt;overflow:revert;padding:revert;table-layout:revert;text-align:revert;tex=
t-indent:revert;text-orientation:revert;text-overflow:revert;text-transform=
:revert;vertical-align:revert;white-space:revert;width:revert;word-break:re=
vert;word-spacing:revert;writing-mode:revert;zoom:revert">
                        <td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A=
6A6" cellpadding=3D"7px 2px 7px 2px" style=3D"background-image:revert;backg=
round-position:revert;background-size:revert;background-repeat:revert;backg=
round-origin:revert;background-clip:revert;border:revert;color:revert;direc=
tion:revert;display:revert;font-size:revert;height:revert;letter-spacing:re=
vert;line-height:revert;margin:revert;opacity:revert;outline:revert;overflo=
w:revert;table-layout:revert;text-align:revert;text-indent:revert;text-orie=
ntation:revert;text-overflow:revert;text-transform:revert;vertical-align:re=
vert;white-space:revert;word-break:revert;word-spacing:revert;writing-mode:=
revert;zoom:revert;padding:7px 2px;background-color:rgb(166,166,166);width:=
0px">
                          <br>
                        </td>
                        <td valign=3D"middle" width=3D"100%" bgcolor=3D"#EA=
EAEA" cellpadding=3D"7px 5px 7px 15px" color=3D"#212121" style=3D"backgroun=
d-image:revert;background-position:revert;background-size:revert;background=
-repeat:revert;background-origin:revert;background-clip:revert;border:rever=
t;direction:revert;display:revert;height:revert;letter-spacing:revert;line-=
height:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;t=
able-layout:revert;text-indent:revert;text-orientation:revert;text-overflow=
:revert;text-transform:revert;vertical-align:revert;white-space:revert;word=
-break:revert;word-spacing:revert;writing-mode:revert;zoom:revert;width:100=
%;background-color:rgb(234,234,234);padding:7px 5px 7px 15px;font-family:wf=
_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,san=
s-serif;font-size:12px;font-weight:normal;color:rgb(33,33,33);text-align:le=
ft">
                          <div style=3D"background:revert;border:revert;col=
or:revert;direction:revert;display:revert;font-size:revert;height:revert;le=
tter-spacing:revert;line-height:revert;margin:revert;opacity:revert;outline=
:revert;overflow:revert;padding:revert;table-layout:revert;text-align:rever=
t;text-indent:revert;text-orientation:revert;text-overflow:revert;text-tran=
sform:revert;vertical-align:revert;white-space:revert;width:revert;word-bre=
ak:revert;word-spacing:revert;writing-mode:revert;zoom:revert">
                            Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-=
mail =C3=A0 partir
                            de <a href=3D"mailto:rkossler@nd.edu" target=3D=
"_blank">
                              rkossler@nd.edu</a>. <a href=3D"https://aka.m=
s/LearnAboutSenderIdentification" style=3D"background:revert;color:revert;d=
irection:revert;display:revert;font-size:revert;opacity:revert" target=3D"_=
blank">
                              Pourquoi c=E2=80=99est important</a> </div>
                        </td>
                        <td valign=3D"middle" align=3D"left" width=3D"75px"=
 bgcolor=3D"#EAEAEA" cellpadding=3D"7px 5px 7px 5px" color=3D"#212121" styl=
e=3D"background-image:revert;background-position:revert;background-size:rev=
ert;background-repeat:revert;background-origin:revert;background-clip:rever=
t;border:revert;direction:revert;display:revert;height:revert;letter-spacin=
g:revert;line-height:revert;margin:revert;opacity:revert;outline:revert;ove=
rflow:revert;table-layout:revert;text-indent:revert;text-orientation:revert=
;text-overflow:revert;text-transform:revert;vertical-align:revert;white-spa=
ce:revert;word-break:revert;word-spacing:revert;writing-mode:revert;zoom:re=
vert;width:75px;background-color:rgb(234,234,234);padding:7px 5px;font-fami=
ly:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif;font-size:12px;font-weight:normal;color:rgb(33,33,33);text-ali=
gn:left">
                          <br>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <div>
                    <div dir=3D"ltr">Hi Quentin,
                      <div>Perhaps your issue is related to the &#39;length=
&#39;
                        parameter of the RFNoC packet?=C2=A0 If you are not
                        correcting the packet length based on the number
                        of samples you are dropping, then you will get
                        ill-formed packets coming out. Do you think that
                        this could be the issue?</div>
                      <div>Rob</div>
                    </div>
                    <br>
                    <div class=3D"gmail_quote">
                      <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17,
                        2025 at 11:40=E2=80=AFAM Quentin Prieels &lt;<a hre=
f=3D"mailto:quentin.prieels@student.uclouvain.be" target=3D"_blank">quentin=
.prieels@student.uclouvain.be</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                        <div>
                          <p><font face=3D"Aptos">Hello everyone,</font></p=
>
                          <p><font face=3D"Aptos">I&#39;m currently
                              implementing a Schmidl &amp; Cox OOT
                              module on a USRP X310 as part of my
                              master&#39;s thesis. (For those interested,
                              the code is available
                              <a href=3D"https://github.com/quentinprieels/=
TFE25-462-rnfoc-ofdm/tree/latency" target=3D"_blank">
                                here</a> (</font><font face=3D"Aptos"><a hr=
ef=3D"https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency" =
target=3D"_blank">https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/bl=
ob/latency</a>)</font><font face=3D"Aptos">.)</font></p>
                          <p><font face=3D"Aptos">The purpose of this
                              block is to detect the beginning of an
                              OFDM frame =E2=80=94 specifically, just after=
 the
                              Schmidl &amp; Cox preamble. I want the
                              block to forward
                              <strong>only</strong> the &quot;valid&quot; s=
amples
                              (i.e., those that are part of the actual
                              OFDM frame). So when I call
                              <code>rx_stream-&gt;recv()</code>, only
                              actual data packets should be received by
                              my UHD application.</font></p>
                          <font face=3D"Aptos">My first idea was to
                            control the <code>tvalid</code> signal of
                            the AXI-Stream interface: setting it to
                            <code>0</code> when the data was not a
                            &quot;valid&quot; OFDM sample, and asserting it=
 (<code>1</code>)
                            only when the data was valid. However, this
                            seems to cause some kind of deadlock. My UHD
                            application always times out and receives no
                            data. Interestingly, when I output
                            zero-valued samples instead of deasserting
                            the <code>tvalid</code> signal, I can see
                            that my synchronization mechanism is working
                            as expected. This suggests the issue likely
                            lies in my use of AXI signals or a
                            misunderstanding of the RFNoC protocol.<br>
                          </font>
                          <p><font face=3D"Aptos"><u>Note</u>: my
                              configured SPP (samples per packet, here
                              200) is smaller than the length of the
                              actual OFDM frame, which consists of
                              thousands of complex samples.</font></p>
                          <p><font face=3D"Aptos">So here&#39;s my main
                              question:<br>
                              Given a continuous stream of data
                              (currently configured as packets with 200
                              samples each, where every packet is
                              valid), how can I output
                              <strong>only a subset</strong> of this
                              stream =E2=80=94 a specific sequence of conti=
nuous
                              samples (potentially spread across
                              multiple packets) =E2=80=94 such that only th=
is
                              valid subset is received by the UHD
                              application? Alternatively, how can I mark
                              only part of the stream as valid for the
                              receiver, while discarding the rest?</font></=
p>
                          <p><font face=3D"Aptos">(For those interested in
                              the code, this behavior corresponds to
                              when
                              <code>output_select</code> is set to <code>2&=
#39;b01</code>
                              in the following module: <a href=3D"https://g=
ithub.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_=
block_schmidl_cox/detector.sv" target=3D"_blank">
                                detector.sv</a> (<a href=3D"https://github.=
com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_=
schmidl_cox/detector.sv" target=3D"_blank">https://github.com/quentinprieel=
s/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detec=
tor.sv</a>)
                              , which controls forwarding of input data
                              only when in the <code>FORWARDING</code>
                              state.)</font></p>
                          <p><font face=3D"Aptos">Thank you all for your
                              help,<br>
                              Quentin</font></p>
                          <p><br>
                          </p>
                          <br>
                        </div>
                        _______________________________________________<br>
                        USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">
                          usrp-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">
                          usrp-users-leave@lists.ettus.com</a><br>
                      </blockquote>
                    </div>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000050f8470632fd56ed--

--00000000000050f8490632fd56ee
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m9lo5z910>
X-Attachment-Id: ii_m9lo5z910

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
BeIuGpAVDQAAAABJRU5ErkJggg==
--00000000000050f8490632fd56ee
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m9lod5w51>
X-Attachment-Id: ii_m9lod5w51

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
Km9Z6vAAAAAASUVORK5CYII=
--00000000000050f8490632fd56ee--

--===============8750553875023133595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8750553875023133595==--
