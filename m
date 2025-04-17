Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDEEA922E4
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 18:41:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C320386093
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 12:41:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744908066; bh=FgLXkhuhwDV2zlFsmHe7toRBvESHKc+TeC73Lpz4HhQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mS9o7K+Zaku/rOpXwdB4S1zNmXpo7tC0TlPvplh0hHcE0nnHAVJdZUN51sR2vQ82Z
	 3SSVsj2wdpH48w7HkVz5sS58CELP15yMMmFqB/6QcU/Q0t0LLYzov+eoQJuoR7wke0
	 lKsmnLwYAP7QBsWFERV8L3OohOrH5B0TfI404jigDnnFQ8agUFPp0tHlbfD78PSkYb
	 Jy1y+gneWWc2kWnNe+WqgesFkkop2EkT7g+Zrii42v30+Jkq3vawbNlwYxSdK0hc6d
	 G9zSBokq7EASu4qKOfmDGxqF3qqyowxCrjImwCiSxK3ZBCiaUtGIJ/2NG0TyIV0VM1
	 4X0FKNkQk8eEw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 690B9385F13
	for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 12:40:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OQ0U5e0y";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e5dce099f4so1260333a12.1
        for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 09:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1744908031; x=1745512831; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mnoYZN7yvCQDCs4kLwA8dZFAAPTF8TCD2W++nUFeMGI=;
        b=OQ0U5e0yafLGHMTiPUoDOk2ul3W++gA9PbBetFysmALJ991YknLsFEMK8SNQlAUijy
         ngdc/VYuCcxrX/qqp7vr6lHPYWXvI3kbWDwTBMVhrodwJpJ5oq7n2xnK2Q9GbDhEpM9Y
         6GOnuITuapyXsySfstUxKLqpgXO6kDZCHQzkuQ21E7wNNAYFuCrXC8PrB5loIem/rS6q
         zNIWaMdGPj/4L+248JpOyb4GzzykO6qLzgDbu7ZFDRxCfwXNzVGT+BKlkLlnRo7shJGO
         GHaNHgGw6Z6v0RrYSAhz9rDITplgowuqRv5rSimezdtbmQMkfuFybn+H6bPUmAmB/LO7
         JWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744908031; x=1745512831;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mnoYZN7yvCQDCs4kLwA8dZFAAPTF8TCD2W++nUFeMGI=;
        b=F2F/7Or2mHwTCJckR3Tn+79Hj44sN2cIZ/eoXEGo4jS4TQ/MRemQSPPrgNAMVk0n5W
         qRg4IZvGJGhKAAcMpgRhc3OLiY7vlML9ClrvJ6lN0Y32g9KbI208pwcwYJWWAhFlifEa
         aM5I+3hblqUBDk/beif4RV13x574aPblSI2a4N1ASkZLbDyfPRorTddZeQLSMCOw7Evf
         ycHmFShVNpFwY4JquO8qbSrnFmANrP815bsVcz68A9Kkun9+GCfhTiIscRJdaMLjDaR0
         aAo6x109KdeTye+gm0/uySynL5LZz35JBWDxL5URV31FDJ6zlxrBbn2281t5yhuWF8lt
         ZlVA==
X-Gm-Message-State: AOJu0YxHc6vbhsMqjqMlg4r4riRZOywt4jlRgXkP7MhuDZlSVmKCF7I/
	6o9DAuobAhz7MWdY8KQhEudrXcO3e3xDBXACIoWxz2IYIbP9NY/FeucR5JeJusrrcth6QJj9WHO
	R8jhQWhA8jznbp65KahQNprFsGbitxShnsrFc07OUrA73iV0=
X-Gm-Gg: ASbGncsh/lxcZ/od0exi1/D5L3oD1UQa3GUx0WfA346XWt3IUXUCZVNwu3JN1nSVWEO
	ZkJbBsPQ4LbiYG5/ISMg5IbjLliYrjQj+7dQBN/x7p8t/IQtz6OcJsqobwIbKdM5Wd0A+hKIlLM
	6YIEtehe+3uO7bbe5+HWS70zIluidTTXRg
X-Google-Smtp-Source: AGHT+IHkTnF9wDsK75+DOTl9PbusciiX9r035WokMNjmb+NXt6lxXSLtsb9Q7/9kJvgftPU713qQ28NwdZXKZ7bB/E4=
X-Received: by 2002:a05:6402:40d1:b0:5ec:c976:268a with SMTP id
 4fb4d7f45d1cf-5f4b748e290mr5655442a12.15.1744908031020; Thu, 17 Apr 2025
 09:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
 <CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1ZRc4nBzeuoqnoQD65Q@mail.gmail.com> <2337446d-6990-490a-bf2c-899f8f738f32@student.uclouvain.be>
In-Reply-To: <2337446d-6990-490a-bf2c-899f8f738f32@student.uclouvain.be>
Date: Thu, 17 Apr 2025 12:40:19 -0400
X-Gm-Features: ATxdqUFfyF32By9Wf6SU17ddf-GMQiNHmA3Nhzgr_t1plT3Fz52bWqXdKs2lbjE
Message-ID: <CAB__hTRP0s1DpWcLXXQZAS2uQVF3--m0knXVqhNHSC2Zu5eabQ@mail.gmail.com>
To: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Message-ID-Hash: SVARX6HVDFIAA4P5SXZTT7BQY5GLOWOA
X-Message-ID-Hash: SVARX6HVDFIAA4P5SXZTT7BQY5GLOWOA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with AXI-Stream Output in Schmidl & Cox RFNoC Module: deadlock when marking some samples as no valid
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SVARX6HVDFIAA4P5SXZTT7BQY5GLOWOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7774202586991955072=="

--===============7774202586991955072==
Content-Type: multipart/alternative; boundary="0000000000005af5e10632fc0fdc"

--0000000000005af5e10632fc0fdc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK. The AXI-Stream Data (simple) interface is the easiest for this case in
my opinion.  Are you using "Sideband-At-End" in order to have the "tlength"
automatically calculated?

You need to set "tlast" like you mentioned. This is critical and not always
easy. Remember that the CHDR packet can only be about 2000 samples whereas
an OFDM packet might be longer. So, your idea about preserving the tlast
from the input stream is probably needed.  You also probably want to
preserve teob from the input unless you are also detecting your own end of
burst in which case you need logic to set this on the final packet and you
need to set tlast on the last sample because the input packets will likely
not have tlast set on this sample.

Note that in the past I have used "axi_rate_change" in a block such as
yours (my block was a pulse detection block based on power) because in
addition to handling a true rate change (which you don't need), it also
takes care of re-packetizing the data.  This allows your own logic to not
worry about RFNoC packets.  But, switching to use this module might be more
of a headache than just handling the RFNoC packets with your own logic.

For the question you asked about receiving a new CHDR packet if an output
packet has not been produced, I think the answer is Yes, this is no problem=
.
Rob

On Thu, Apr 17, 2025 at 12:16=E2=80=AFPM Quentin Prieels <
quentin.prieels@student.uclouvain.be> wrote:

> Hi Rob,
>
> I'm not sure. I also tried forwarding the tlast signal of the original
> tdata samples to force the system to send a CHDR packet=E2=80=94even if m=
y OFDM
> packet wasn't finished yet=E2=80=94but it doesn=E2=80=99t seem to solve t=
he issue.
>
> Another question I=E2=80=99ve been asking myself is:* does RFNoC allow a =
block to
> receive a new incoming CHDR packet if it hasn=E2=80=99t yet produced an o=
utgoing
> packet*?
>
> I'm using the AXI-Stream Data (Simple) interface, so I assume the NoC
> shell handles packet manipulation and length. I don't see where I could
> modify this behavior...
>
> If you have any ideas or insights, I=E2=80=99d be happy to investigate fu=
rther.
>
> Best regards,
> Quentin
>
> On 4/17/25 17:58, Rob Kossler wrote:
>
>
> Vous n=E2=80=99obtenez pas souvent d=E2=80=99e-mail =C3=A0 partir de rkos=
sler@nd.edu. Pourquoi
> c=E2=80=99est important <https://aka.ms/LearnAboutSenderIdentification>
>
> Hi Quentin,
> Perhaps your issue is related to the 'length' parameter of the RFNoC
> packet?  If you are not correcting the packet length based on the number =
of
> samples you are dropping, then you will get ill-formed packets coming out=
.
> Do you think that this could be the issue?
> Rob
>
> On Thu, Apr 17, 2025 at 11:40=E2=80=AFAM Quentin Prieels <
> quentin.prieels@student.uclouvain.be> wrote:
>
>> Hello everyone,
>>
>> I'm currently implementing a Schmidl & Cox OOT module on a USRP X310 as
>> part of my master's thesis. (For those interested, the code is available
>> here
>> <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latency> (
>> https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency).)
>>
>> The purpose of this block is to detect the beginning of an OFDM frame =
=E2=80=94
>> specifically, just after the Schmidl & Cox preamble. I want the block to
>> forward *only* the "valid" samples (i.e., those that are part of the
>> actual OFDM frame). So when I call rx_stream->recv(), only actual data
>> packets should be received by my UHD application.
>> My first idea was to control the tvalid signal of the AXI-Stream
>> interface: setting it to 0 when the data was not a "valid" OFDM sample,
>> and asserting it (1) only when the data was valid. However, this seems
>> to cause some kind of deadlock. My UHD application always times out and
>> receives no data. Interestingly, when I output zero-valued samples inste=
ad
>> of deasserting the tvalid signal, I can see that my synchronization
>> mechanism is working as expected. This suggests the issue likely lies in=
 my
>> use of AXI signals or a misunderstanding of the RFNoC protocol.
>>
>> *Note*: my configured SPP (samples per packet, here 200) is smaller than
>> the length of the actual OFDM frame, which consists of thousands of comp=
lex
>> samples.
>>
>> So here's my main question:
>> Given a continuous stream of data (currently configured as packets with
>> 200 samples each, where every packet is valid), how can I output *only a
>> subset* of this stream =E2=80=94 a specific sequence of continuous sampl=
es
>> (potentially spread across multiple packets) =E2=80=94 such that only th=
is valid
>> subset is received by the UHD application? Alternatively, how can I mark
>> only part of the stream as valid for the receiver, while discarding the
>> rest?
>>
>> (For those interested in the code, this behavior corresponds to when
>> output_select is set to 2'b01 in the following module: detector.sv
>> <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpg=
a/ofdm/rfnoc_block_schmidl_cox/detector.sv>
>> (
>> https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga=
/ofdm/rfnoc_block_schmidl_cox/detector.sv)
>> , which controls forwarding of input data only when in the FORWARDING
>> state.)
>>
>> Thank you all for your help,
>> Quentin
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000005af5e10632fc0fdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>OK. The AXI-Stream Data (simple) interface is the eas=
iest for this case in my opinion.=C2=A0 Are you using &quot;Sideband-At-End=
&quot; in order to have the &quot;tlength&quot; automatically calculated?</=
div><div><br></div><div>You need to set &quot;tlast&quot; like you mentione=
d. This is critical and not always easy. Remember that the CHDR packet can =
only be about 2000 samples whereas an OFDM packet might be longer. So, your=
 idea about preserving the tlast from the input stream is probably needed.=
=C2=A0 You also probably want to preserve teob from the input unless you ar=
e also detecting your own end of burst in which case you need logic to set =
this on the final packet and you need to set tlast on the last sample becau=
se the input packets will likely not have tlast set on this sample.</div><d=
iv><br></div><div>Note that in the past I have used &quot;axi_rate_change&q=
uot; in a block such as yours (my block was a pulse detection block based o=
n power) because in addition to handling a true rate change (which you don&=
#39;t need), it also takes care of re-packetizing the data.=C2=A0 This allo=
ws your own logic to not worry about RFNoC packets.=C2=A0 But, switching to=
 use this module might be more of a headache than just handling the RFNoC p=
ackets with your own logic.=C2=A0</div><div><br></div><div>For the question=
 you asked about=C2=A0receiving a new CHDR packet if an output packet has n=
ot been produced, I think the answer is Yes, this is no problem.</div><div>=
Rob</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at 12:16=E2=80=AFPM Quentin P=
rieels &lt;<a href=3D"mailto:quentin.prieels@student.uclouvain.be">quentin.=
prieels@student.uclouvain.be</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><u></u>

 =20
  <div>
    <p><font face=3D"Aptos">Hi
        Rob,</font></p>
    <p><font face=3D"Aptos">I&#39;m
        not sure. I also tried forwarding the <code>tlast</code> signal of =
the original <code>tdata</code> samples to force
        the system to send a CHDR packet=E2=80=94even if my OFDM packet was=
n&#39;t
        finished yet=E2=80=94but it doesn=E2=80=99t seem to solve the issue=
.</font></p>
    <p><font face=3D"Aptos">Another
        question I=E2=80=99ve been asking myself is:<i> does RFNoC allow a =
block
          to receive a new incoming CHDR packet if it hasn=E2=80=99t yet
          produced an outgoing packet</i>?</font></p>
    <p><font face=3D"Aptos">I&#39;m
        using the AXI-Stream Data (Simple) interface, so I assume the
        NoC shell handles packet manipulation and length. I don&#39;t see
        where I could modify this behavior...</font></p>
    <p><font face=3D"Aptos">If
        you have any ideas or insights, I=E2=80=99d be happy to investigate
        further.</font></p>
    <p><font face=3D"Aptos">Best
        regards,<br>
        Quentin<br>
      </font><br>
      On 4/17/25 17:58, Rob Kossler wrote:</p>
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
        <div dir=3D"ltr">Hi Quentin,
          <div>Perhaps your issue is related to the &#39;length&#39; parame=
ter
            of the RFNoC packet?=C2=A0 If you are not correcting the packet
            length based on the number of samples you are dropping, then
            you will get ill-formed packets coming out. Do you think
            that this could be the issue?</div>
          <div>Rob</div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at
            11:40=E2=80=AFAM Quentin Prieels &lt;<a href=3D"mailto:quentin.=
prieels@student.uclouvain.be" target=3D"_blank">quentin.prieels@student.ucl=
ouvain.be</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <p><font face=3D"Aptos">Hello everyone,</font></p>
              <p><font face=3D"Aptos">I&#39;m currently implementing a Schm=
idl
                  &amp; Cox OOT module on a USRP X310 as part of my
                  master&#39;s thesis. (For those interested, the code is
                  available
                  <a href=3D"https://github.com/quentinprieels/TFE25-462-rn=
foc-ofdm/tree/latency" target=3D"_blank">
                    here</a> (</font><font face=3D"Aptos"><a href=3D"https:=
//github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency" target=3D"_b=
lank">https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency</=
a>)</font><font face=3D"Aptos">.)</font></p>
              <p><font face=3D"Aptos">The purpose of this block is to
                  detect the beginning of an OFDM frame =E2=80=94 specifica=
lly,
                  just after the Schmidl &amp; Cox preamble. I want the
                  block to forward
                  <strong>only</strong> the &quot;valid&quot; samples (i.e.=
, those
                  that are part of the actual OFDM frame). So when I
                  call
                  <code>rx_stream-&gt;recv()</code>, only actual data
                  packets should be received by my UHD application.</font><=
/p>
              <font face=3D"Aptos">My first idea was to control the <code>t=
valid</code>
                signal of the AXI-Stream interface: setting it to
                <code>0</code> when the data was not a &quot;valid&quot; OF=
DM
                sample, and asserting it (<code>1</code>) only when the
                data was valid. However, this seems to cause some kind
                of deadlock. My UHD application always times out and
                receives no data. Interestingly, when I output
                zero-valued samples instead of deasserting the <code>tvalid=
</code>
                signal, I can see that my synchronization mechanism is
                working as expected. This suggests the issue likely lies
                in my use of AXI signals or a misunderstanding of the
                RFNoC protocol.<br>
              </font>
              <p><font face=3D"Aptos"><u>Note</u>: my configured SPP
                  (samples per packet, here 200) is smaller than the
                  length of the actual OFDM frame, which consists of
                  thousands of complex samples.</font></p>
              <p><font face=3D"Aptos">So here&#39;s my main question:<br>
                  Given a continuous stream of data (currently
                  configured as packets with 200 samples each, where
                  every packet is valid), how can I output
                  <strong>only a subset</strong> of this stream =E2=80=94 a
                  specific sequence of continuous samples (potentially
                  spread across multiple packets) =E2=80=94 such that only =
this
                  valid subset is received by the UHD application?
                  Alternatively, how can I mark only part of the stream
                  as valid for the receiver, while discarding the rest?</fo=
nt></p>
              <p><font face=3D"Aptos">(For those interested in the code,
                  this behavior corresponds to when
                  <code>output_select</code> is set to <code>2&#39;b01</cod=
e>
                  in the following module: <a href=3D"https://github.com/qu=
entinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmid=
l_cox/detector.sv" target=3D"_blank">
                    detector.sv</a> (<a href=3D"https://github.com/quentinp=
rieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/=
detector.sv" target=3D"_blank">https://github.com/quentinprieels/TFE25-462-=
rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv</a>)
                  , which controls forwarding of input data only when in
                  the <code>FORWARDING</code> state.)</font></p>
              <p><font face=3D"Aptos">Thank you all for your help,<br>
                  Quentin</font></p>
              <p><br>
              </p>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">
              usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank">
              usrp-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </div>

</blockquote></div></div>

--0000000000005af5e10632fc0fdc--

--===============7774202586991955072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7774202586991955072==--
