Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 398846B9F5A
	for <lists+usrp-users@lfdr.de>; Tue, 14 Mar 2023 20:07:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B2413830F0
	for <lists+usrp-users@lfdr.de>; Tue, 14 Mar 2023 15:07:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678820872; bh=q4SxBrVx/R+SA3takPNsvKXtyVeXvrSNWGwpUQEiP0Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NbHuy1194KE8YlgikaT/QoF2THC097WFfGS1y33+uZT+yaLmmc/PgC2+QqcMsSYcB
	 yqyEf/xXMQAz4MVmGWQpz2RKbuCWiDUhVosw12NqTAdx5XPDEMdhScPOI7M4VG7PvD
	 oQGyxVuOv0SneBjHXk5HfawByTZ6UdiD4SF0h/NkJqj8CqlKTdxvs+GRR67egidJH1
	 EUISpOhN+poCQbrH+7IHeEKfxGUpgVUEdUBJ050lzy5k1bdMTGFu5ANztNGA8ah8QV
	 eW3/Ly8AhY8zGVs9piDo5jzldRrLUR0fqvTtW7sXfCqty1ms3bbAG5kwpipczl1ivL
	 1TA2ksYQdJOlw==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 60AE8383BE1
	for <usrp-users@lists.ettus.com>; Tue, 14 Mar 2023 15:07:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YfBdr5p+";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id ek18so35077457edb.6
        for <usrp-users@lists.ettus.com>; Tue, 14 Mar 2023 12:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678820829;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VlXOIYm0RlffLbsb1iELw1dQAUdsKOcDooKQ8UFf/HU=;
        b=YfBdr5p+C5FpSyNJe61WujWCKmGyxzRSMdmwmnwbyMcYAWItoOp1eAndAXXGZJN8MR
         tzi8Zcem+ekw7I3hg568vs1LJPJad7kpE1jx9KjshLyn35VWJe1tRRRgZww7uas6ItiB
         BJF6HDeeCTmt7sjknpY9+YaJYV8Sv1Bn4KJ98D/nUqxLzuZrRvnYmkSnJh+rchZrP8rn
         2lV9LGf56RSxTZ+iIoem496urXUYt6yZunUrzTvjIe49sABRVcZ2Y/lfqAcRShusJzY7
         MlEApY6AHZujR1epLbyV1f9V3xc4exqpkcQfLR0ox73Oow0NdWnzveNEEck0rh6NXy0r
         TAoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678820829;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VlXOIYm0RlffLbsb1iELw1dQAUdsKOcDooKQ8UFf/HU=;
        b=1vPh45pSJY4tADcVav5sQzS8gavL7fEBaKXsA2OG9MzHmyDjsUmBpxppRtXqR4IokA
         acViRZEQRdUi00BQnWUyTHQmOrygWfmceq0x/pWQGh/CUD+MAL/1yEJzJ3njl78k377J
         cBplAQrn9JafgK1bT7o4TwO6hpfJrdV+fJhktduZHhqJuN2wkUBzOVc58zg/r3Epf5N8
         CevvnN4okqStNhyol6JbmBBABWidTERXYbHYCWFRrQkdEijtf7/B3kaa8XVrBR280wjg
         YeM7Jp7AikzDPFYsUMMkDApyM7XbPykJp00bLpb3zv988+Su+9mHTE+TDsnswg2NmN09
         tUpg==
X-Gm-Message-State: AO0yUKWqk2b7+Y6rrsFTzUpFTkhzCArgqPDbCrqfOIr95NRf6fXd6yJZ
	vUnUeIKQN4bMxj/0KJdXej38AhSsTbzVYjNXJU4=
X-Google-Smtp-Source: AK7set+i1BbQMZBJG6kA/qR3z7w1ag49zdDkwY8ETQX2VW8VPYDYDXoruWYIjKeP+y3cOwtY0z+ru83uRzQr1I2b6Cw=
X-Received: by 2002:a50:cdd2:0:b0:4ab:49b9:686d with SMTP id
 h18-20020a50cdd2000000b004ab49b9686dmr109574edj.1.1678820828893; Tue, 14 Mar
 2023 12:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
 <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com> <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
 <f64de861-4dab-89d2-11fe-686386018678@gmail.com> <CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmail.com>
 <09552c3a-389a-e4ac-558a-7a500b3e710f@gmail.com> <PH0PR15MB4704FF496FFC8446310AF57CE3BE9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <a60694a4-aa5c-95e0-817d-642a6c0e0171@gmail.com> <CAB__hTRQZxSNbdTvRRgFEXzgmEMZRPRjiZb+F1wpy40rmEG_Mg@mail.gmail.com>
In-Reply-To: <CAB__hTRQZxSNbdTvRRgFEXzgmEMZRPRjiZb+F1wpy40rmEG_Mg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 14 Mar 2023 15:06:57 -0400
Message-ID: <CAEXYVK76KHWt37Ni02iNoJtieTzZNdXVaaWDhNsatmkheXCO2Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="0000000000002617b905f6e0efdc"
Message-ID-Hash: X26D5G2SMY2X7H3ZBIALISXHFQBWX6HC
X-Message-ID-Hash: X26D5G2SMY2X7H3ZBIALISXHFQBWX6HC
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X26D5G2SMY2X7H3ZBIALISXHFQBWX6HC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000002617b905f6e0efdc
Content-Type: multipart/alternative; boundary="0000000000002617b705f6e0efda"

--0000000000002617b705f6e0efda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've made some custom converters in the past for RFNoC devices.  This page
is supposed to be useful:

  https://files.ettus.com/manual/page_converters.html

Attached is the relevant code to make a simple converter.  Note it isn't
performant, but it gets the job done.

In my main(), I then call register_converter() which adds the converters.
When streaming, I then have stream_args("f32","u32") and the appropriate
converter is used by UHD.

Feel free to play around.

Brian


On Tue, Mar 14, 2023 at 2:23=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> I think that there are 2 places where byte ordering occurs: in the FPGA a=
t
> the Streaming Endpoint (SEP) and in UHD with a particular converter.
> Assuming a 64-bit CHDR word coming into the SEP, the SEP orders the bytes
> according to what it thinks the "item" size is (I really don't know how i=
t
> knows the item size or if/how you can configure it differently). But, in
> any case, if the SEP thinks that the item size is 4 bytes, it will order
> the bytes by MSB in order to send across the link (e.g., Ethernet). If th=
e
> CHDR width is 8 bytes and the item size is 4 bytes, I'm not sure if the S=
EP
> will send the lower "item" first or the upper "item" first.
>
> On the UHD side, it will assume an item type based on the rx streamer OTW
> setting (e.g., "sc16") and will swap bytes if needed for a little endian
> host.  (I do not know if the OTW setting affects the behavior of the SEP =
on
> the FPGA but perhaps it does.)
>
> Until I understand things better, I have resigned myself to having to
> assume that both the FPGA and UHD will treat my bytes as an sc16 such tha=
t
> I have to pre-arrange and/or post-arrange any manipulations performed by
> the SEP and UHD converter.  This is not very convenient.
> Rob
>
> On Tue, Mar 14, 2023 at 12:10=E2=80=AFPM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 14/03/2023 10:27, Vermeulen, Bas (Consultant) wrote:
>>
>> The problem isn't so much the byteswapping in the int16, but the int16's
>> being swapped.
>>
>> I am sending SC16's (I0 Q0 I1 Q1 I2 Q2 I3 Q3), and expect to receive the
>> 16 bit values in the same order (Val0 Val1 Val2 Val3).
>> When using sc8's, I got (I3 Q3 I2 Q2 I1 Q1 I0 Q0) which I didn't expect
>> at all.
>>
>> Regards,
>>
>> Bas Vermeulen
>>
>> Like i pointed out earlier, X310 doesn't support SC8 data, so I have no
>> idea what it will do if you try to "force" the issue.
>>
>>
>> ------------------------------
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>> <patchvonbraun@gmail.com>
>> *Sent:* Wednesday, March 8, 2023 8:46 PM
>> *To:* Rob Kossler <rkossler@nd.edu> <rkossler@nd.edu>
>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> <usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Re: RFNOC module sending back (or receiving)
>> data in the wrong order
>>
>> Sent by an external sender
>> ------------------------------
>> On 08/03/2023 14:41, Rob Kossler wrote:
>>
>> Agreed, but it doesn't seem too much to expect that UHD should natively
>> supply a "non-swapping" converter so that each user who needs one doesn'=
t
>> have to develop it.
>> Rob
>>
>> In this case, the RFNOC code is kinda pretending that it's sending int16
>> integers, but the actual semantic is somewhat different.
>>   So a non-swapping converter would happen to work in this case, but it'=
s
>> kind of subverting the "object model" a bit.
>>
>> Perhaps some kind of "raw" converter in which there's no implied object
>> semantics.
>>
>>
>> On Wed, Mar 8, 2023 at 1:45=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
>> wrote:
>>
>> On 08/03/2023 13:36, Rob Kossler wrote:
>>
>> Oh yeah, I forgot.  Does this imply that there is no way to keep UHD fro=
m
>> swapping bytes in an rx_streamer (using X310)?  If so, this seems like a
>> problem for RFNoC development since the data coming across the wire can =
be
>> in any format the designer chooses.  And, swapping in the FPGA is not a
>> good solution because you don't know the Endianness of the host.
>> Rob
>>
>> The "doctrine" has been to represent data types in their "natural
>> network-byte-order" on the wire, and the host code
>>   can do whatever it needs to do.   This is consistent with practice in
>> nearly-all other disciplines that send data over
>>   the network (whether that's the Internet or other ethernet networks,
>> etc).
>>
>> For little-endian hosts, UHD has to do the swap.
>>
>> But UHD allows you to register your own converter methods.  I've never
>> done it myself, but I don't think it's that hard.
>>
>>
>>
>> On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>> On 08/03/2023 11:42, Rob Kossler wrote:
>>
>> Maybe can you just change the streamer OTW & CPU format to "sc8" such
>> that no byte swapping will occur?
>>
>> I know that on the default X3xx builds, there's no sc8 format implemente=
d
>> on the USRP end.
>>
>>
>>
>> On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife <wade.fife@ettus.com> =
wrote:
>>
>> You could swap the bytes in your block, or swap them in software on the
>> host. The data gets rearranged by the streamer depending on the data typ=
e
>> configured (e.g., sc16) and the endianness of the host machine.
>>
>> Wade
>>
>> On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via U=
SRP-users
>> <usrp-users@lists.ettus.com> wrote:
>>
>> Hi,
>>
>> We are developing an RFNOC module that takes I/Q data, and turns that
>> into two 8 bit values.
>> I have a test program that sends data to the RFNOC module, and receives
>> the modified data.
>>
>> The RFNOC module treats the two 8 bit values as one signed 16 bit value.
>> When I read the data from the test program, I get it in the wrong order:
>>
>> Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>> Receive: Val1 Val0 Val3 Val2
>>
>> Does anyone have any idea how to fix the order of the received values?
>>
>> Regards,
>>
>> Bas Vermeulen
>>
>> ------------------------------
>>
>>
>>
>> CONFIDENTIALITY NOTICE: This message (including any attachments) may
>> contain Molex confidential information, protected by law. If this messag=
e
>> is confidential, forwarding it to individuals, other than those with a n=
eed
>> to know, without the permission of the sender, is prohibited.
>>
>> This message is also intended for a specific individual. If you are not
>> the intended recipient, you should delete this message and are hereby
>> notified that any disclosure, copying, or distribution of this message o=
r
>> taking of any action based upon it, is strictly prohibited.
>>
>> English | Chinese | Japanese
>> www.molex.com/confidentiality.html
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>>
>>
>> ------------------------------
>>
>>
>>
>> CONFIDENTIALITY NOTICE: This message (including any attachments) may
>> contain Molex confidential information, protected by law. If this messag=
e
>> is confidential, forwarding it to individuals, other than those with a n=
eed
>> to know, without the permission of the sender, is prohibited.
>>
>> This message is also intended for a specific individual. If you are not
>> the intended recipient, you should delete this message and are hereby
>> notified that any disclosure, copying, or distribution of this message o=
r
>> taking of any action based upon it, is strictly prohibited.
>>
>> English | Chinese | Japanese
>> www.molex.com/confidentiality.html
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002617b705f6e0efda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve made some custom converters in the past for RFNoC=
 devices.=C2=A0 This page is supposed to be useful:<div><br></div><div>=C2=
=A0=C2=A0<a href=3D"https://files.ettus.com/manual/page_converters.html">ht=
tps://files.ettus.com/manual/page_converters.html</a></div><div><br></div><=
div>Attached is the relevant=C2=A0code to make a simple converter.=C2=A0 No=
te it isn&#39;t performant, but it gets the job done.</div><div><br></div><=
div>In my main(), I then call register_converter() which adds the converter=
s.=C2=A0 When streaming, I then have stream_args(&quot;f32&quot;,&quot;u32&=
quot;) and the appropriate converter is used by UHD.</div><div><br></div><d=
iv>Feel free to play around.</div><div><br></div><div>Brian</div><div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Mar 14, 2023 at 2:23=E2=80=AFPM Rob Kossler &lt;<a href=3D"mai=
lto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I think that there are=
 2 places where byte ordering occurs: in the FPGA at the Streaming Endpoint=
 (SEP) and in UHD with a particular converter.=C2=A0 Assuming a 64-bit CHDR=
 word coming into the SEP, the SEP orders the bytes according to what it th=
inks the &quot;item&quot; size is (I really don&#39;t know how it knows the=
 item size or if/how you can configure it differently). But, in any case, i=
f the SEP thinks that the item size is 4 bytes, it will order the bytes by =
MSB in order to send across the link (e.g., Ethernet). If the CHDR width is=
 8 bytes and the item size is 4 bytes, I&#39;m not sure if the SEP will sen=
d the lower &quot;item&quot; first or the upper &quot;item&quot; first.=C2=
=A0=C2=A0<div><br></div><div>On the UHD side, it will assume an item type b=
ased on the rx streamer OTW setting (e.g., &quot;sc16&quot;) and will swap =
bytes if needed for a little=C2=A0endian host.=C2=A0 (I do not know if the =
OTW setting affects the behavior of the SEP on the FPGA but perhaps it does=
.)</div><div><br></div><div>Until I understand things better, I have resign=
ed myself to having to assume that both the FPGA and UHD will treat my byte=
s as an sc16 such that I have to pre-arrange and/or post-arrange any manipu=
lations performed by the SEP and UHD converter.=C2=A0 This is not very conv=
enient.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Mar 14, 2023 at 12:10=E2=80=AFPM Marcus =
D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 14/03/2023 10:27, Vermeulen, Bas
      (Consultant) wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        The problem isn&#39;t so much the byteswapping in the int16, but th=
e
        int16&#39;s being swapped.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        I am sending SC16&#39;s (I0 Q0 I1 Q1 I2 Q2 I3 Q3), and expect to
        receive the 16 bit values in the same order (Val0 Val1 Val2
        Val3).</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        When using sc8&#39;s, I got (I3 Q3 I2 Q2 I1 Q1 I0 Q0) which I didn&=
#39;t
        expect at all.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        Regards,</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        Bas Vermeulen<br>
      </div>
    </blockquote>
    Like i pointed out earlier, X310 doesn&#39;t support SC8 data, so I hav=
e
    no idea what it will do if you try to &quot;force&quot; the issue.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
      </div>
      <hr style=3D"display:inline-block;width:98%">
      <div id=3D"m_2718663212839387868m_5998183473085879005divRplyFwdMsg" d=
ir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" colo=
r=3D"#000000"><b>From:</b> Marcus
          D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bl=
ank">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Wednesday, March 8, 2023 8:46 PM<br>
          <b>To:</b> Rob Kossler <a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">&lt;rkossler@nd.edu&gt;</a><br>
          <b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>
          <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">&=
lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: RFNOC module sending back (or
          receiving) data in the wrong order</font>
        <div>=C2=A0</div>
      </div>
      <div><font color=3D"red">Sent by an external sender</font>
        <hr>
        <div>On 08/03/2023 14:41, Rob Kossler
          wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <div dir=3D"ltr">Agreed, but it doesn&#39;t seem too much to expe=
ct
            that UHD should natively supply a &quot;non-swapping&quot; conv=
erter
            so that each user who needs one doesn&#39;t have to develop it.
            <div>Rob</div>
          </div>
        </blockquote>
        In this case, the RFNOC code is kinda pretending that it&#39;s
        sending int16 integers, but the actual semantic is somewhat
        different.<br>
        =C2=A0 So a non-swapping converter would happen to work in this cas=
e,
        but it&#39;s kind of subverting the &quot;object model&quot; a bit.=
<br>
        <br>
        Perhaps some kind of &quot;raw&quot; converter in which there&#39;s=
 no implied
        object semantics.<br>
        <br>
        <blockquote type=3D"cite"><br>
          <div>
            <div dir=3D"ltr">On Wed, Mar 8, 2023 at
              1:45=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
              <div>
                <div>On 08/03/2023 13:36, Rob Kossler wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">Oh yeah, I forgot.=C2=A0 Does this imply
                    that there is no way to keep UHD from swapping bytes
                    in an rx_streamer (using X310)?=C2=A0 If so, this seems
                    like a problem for RFNoC development since the data
                    coming across the wire can be in any format the
                    designer chooses.=C2=A0 And, swapping in the FPGA is no=
t
                    a good solution because you don&#39;t know the
                    Endianness of the host.
                    <div>Rob</div>
                  </div>
                </blockquote>
                The &quot;doctrine&quot; has been to represent data types i=
n their
                &quot;natural network-byte-order&quot; on the wire, and the=
 host
                code<br>
                =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is =
consistent
                with practice in nearly-all other disciplines that send
                data over<br>
                =C2=A0 the network (whether that&#39;s the Internet or othe=
r
                ethernet networks, etc).<br>
                <br>
                For little-endian hosts, UHD has to do the swap.<br>
                <br>
                But UHD allows you to register your own converter
                methods.=C2=A0 I&#39;ve never done it myself, but I don&#39=
;t think
                it&#39;s that hard.<br>
                <br>
                <br>
                <blockquote type=3D"cite"><br>
                  <div>
                    <div dir=3D"ltr">On Wed, Mar 8,
                      2023 at 12:07=E2=80=AFPM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
                      <div>
                        <div>On 08/03/2023 11:42, Rob Kossler wrote:<br>
                        </div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">Maybe can you just change the
                            streamer OTW &amp; CPU format to &quot;sc8&quot=
; such
                            that no byte swapping will occur?</div>
                        </blockquote>
                        I know that on the default X3xx builds, there&#39;s
                        no sc8 format implemented on the USRP end.<br>
                        <br>
                        <br>
                        <blockquote type=3D"cite"><br>
                          <div>
                            <div dir=3D"ltr">On Tue,
                              Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife &lt=
;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.c=
om</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
                              <div dir=3D"ltr">You could swap the bytes in
                                your block, or swap them in software on
                                the host. The=C2=A0data gets rearranged by
                                the streamer depending on the data type
                                configured (e.g., sc16) and the
                                endianness of the host machine.
                                <div><br>
                                </div>
                                <div>Wade</div>
                              </div>
                              <br>
                              <div>
                                <div dir=3D"ltr">On
                                  Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Verme=
ulen,
                                  Bas (Consultant) via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                                  <div>
                                    <div dir=3D"ltr">
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        Hi,</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        <br>
                                      </div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        We are developing an RFNOC
                                        module that takes I/Q data, and
                                        turns that into two 8 bit
                                        values.</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        I have a test program that sends
                                        data to the RFNOC module, and
                                        receives the modified data.</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        <br>
                                      </div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        The RFNOC module treats the two
                                        8 bit values as one signed 16
                                        bit value.</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        When I read the data from the
                                        test program, I get it in the
                                        wrong order:<br>
                                        <br>
                                        Send: Re0 Im0 Re1 Im1 Re2 Im2
                                        Re3 Im3 <br>
                                      </div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        Receive: Val1 Val0 Val3 Val2</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        <br>
                                      </div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        Does anyone have any idea how to
                                        fix the order of the received
                                        values?</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        <br>
                                      </div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        Regards,</div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        <br>
                                      </div>
                                      <div style=3D"font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rg=
b(255,255,255)">
                                        Bas Vermeulen<br>
                                      </div>
                                      <br>
                                      <hr>
                                      <font size=3D"1" face=3D"Arial" color=
=3D"Gray"><br>
                                        <br>
                                        <br>
                                        CONFIDENTIALITY NOTICE: This
                                        message (including any
                                        attachments) may contain Molex
                                        confidential information,
                                        protected by law. If this
                                        message is confidential,
                                        forwarding it to individuals,
                                        other than those with a need to
                                        know, without the permission of
                                        the sender, is prohibited.<br>
                                        <br>
                                        This message is also intended
                                        for a specific individual. If
                                        you are not the intended
                                        recipient, you should delete
                                        this message and are hereby
                                        notified that any disclosure,
                                        copying, or distribution of this
                                        message or taking of any action
                                        based upon it, is strictly
                                        prohibited.<br>
                                        <br>
                                        English | Chinese | Japanese<br>
                                        <a href=3D"http://www.molex.com/con=
fidentiality.html" target=3D"_blank">www.molex.com/confidentiality.html</a>=
<br>
                                      </font></div>
_______________________________________________<br>
                                    USRP-users mailing list -- <a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">
                                      usrp-users@lists.ettus.com</a><br>
                                    To unsubscribe send an email to <a href=
=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">
                                      usrp-users-leave@lists.ettus.com</a><=
br>
                                  </div>
                                </blockquote>
                              </div>
_______________________________________________<br>
                              USRP-users mailing list -- <a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">
                                usrp-users@lists.ettus.com</a><br>
                              To unsubscribe send an email to <a href=3D"ma=
ilto:usrp-users-leave@lists.ettus.com" target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                            </blockquote>
                          </div>
                          <br>
                          <fieldset></fieldset>
                          <pre>____________________________________________=
___
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                        </blockquote>
                        <br>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list -- <a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">
                        usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" target=3D"_blank">
                        usrp-users-leave@lists.ettus.com</a><br>
                    </blockquote>
                  </div>
                </blockquote>
                <br>
              </div>
            </blockquote>
          </div>
        </blockquote>
        <br>
      </div>
      <br>
      <hr>
      <font size=3D"1" face=3D"Arial" color=3D"Gray"><br>
        <br>
        <br>
        CONFIDENTIALITY NOTICE: This message (including any attachments)
        may contain Molex confidential information, protected by law. If
        this message is confidential, forwarding it to individuals,
        other than those with a need to know, without the permission of
        the sender, is prohibited.<br>
        <br>
        This message is also intended for a specific individual. If you
        are not the intended recipient, you should delete this message
        and are hereby notified that any disclosure, copying, or
        distribution of this message or taking of any action based upon
        it, is strictly prohibited.<br>
        <br>
        English | Chinese | Japanese<br>
        <a href=3D"http://www.molex.com/confidentiality.html" target=3D"_bl=
ank">www.molex.com/confidentiality.html</a><br>
      </font>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002617b705f6e0efda--

--0000000000002617b905f6e0efdc
Content-Type: text/x-c++src; charset="US-ASCII"; name="convert.cpp"
Content-Disposition: attachment; filename="convert.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_lf8mfl0x0>
X-Attachment-Id: f_lf8mfl0x0

I2luY2x1ZGUgPHVoZC9jb252ZXJ0LmhwcD4KI2luY2x1ZGUgPGFycGEvaW5ldC5oPgoKdWhkOjpj
b252ZXJ0Ojpjb252ZXJ0ZXI6On5jb252ZXJ0ZXIoKSB7IH0KCmNsYXNzIGNvbnZlcnRfdTMyX3Uz
MiA6IHB1YmxpYyB1aGQ6OmNvbnZlcnQ6OmNvbnZlcnRlciB7CiAgICBwdWJsaWM6CiAgICAgICAg
Y29udmVydF91MzJfdTMyKHZvaWQpIHsgfQogICAgICAgIH5jb252ZXJ0X3UzMl91MzIodm9pZCkg
eyB9CiAgICAgICAgdm9pZCBzZXRfc2NhbGFyKGNvbnN0IGRvdWJsZSBzY2FsYXIpIHsgKHZvaWQp
c2NhbGFyIDsgfQogICAgcHJpdmF0ZToKICAgICAgICB2b2lkIG9wZXJhdG9yKCkoY29uc3QgaW5w
dXRfdHlwZSAmaW5wdXRzLCBjb25zdCBvdXRwdXRfdHlwZSAmb3V0cHV0cywgY29uc3Qgc2l6ZV90
IG5zYW1wcykgewogICAgICAgICAgICBjb25zdCB1aW50MzJfdCAqaW5wdXQgPSByZWludGVycHJl
dF9jYXN0PGNvbnN0IHVpbnQzMl90ICo+KGlucHV0c1swXSkgOwogICAgICAgICAgICB1aW50MzJf
dCAqb3V0cHV0ID0gcmVpbnRlcnByZXRfY2FzdDx1aW50MzJfdCAqPihvdXRwdXRzWzBdKSA7Cgog
ICAgICAgICAgICBzaXplX3QgaSA7CiAgICAgICAgICAgIGZvcihpID0gMCA7IGkgPCBuc2FtcHMg
OyBpKyspIHsKICAgICAgICAgICAgICAgIG91dHB1dFtpXSA9IG50b2hsKGlucHV0W2ldKSA7CiAg
ICAgICAgICAgIH0KICAgICAgICB9Cn0gOwoKY2xhc3MgY29udmVydF91MzJfZjMyIDogcHVibGlj
IHVoZDo6Y29udmVydDo6Y29udmVydGVyIHsKICAgIHB1YmxpYzoKICAgICAgICBjb252ZXJ0X3Uz
Ml9mMzIodm9pZCkgOiBfc2NhbGFyKDEuMGYvNDI5NDk2NzI5NS4wZikgewogICAgICAgICAgICAv
LyBOT1AKICAgICAgICB9CgogICAgICAgIH5jb252ZXJ0X3UzMl9mMzIodm9pZCkgeyB9CgogICAg
ICAgIHZvaWQgc2V0X3NjYWxhcihjb25zdCBkb3VibGUgc2NhbGFyKSB7CiAgICAgICAgICAgICh2
b2lkKXNjYWxhciA7CiAgICAgICAgICAgIC8vIF9zY2FsYXIgPSBzdGF0aWNfY2FzdDxmbG9hdD4o
c2NhbGFyKSA7CiAgICAgICAgfQoKICAgIHByaXZhdGU6CiAgICAgICAgdm9pZCBvcGVyYXRvcigp
KGNvbnN0IGlucHV0X3R5cGUgJmlucHV0cywgY29uc3Qgb3V0cHV0X3R5cGUgJm91dHB1dHMsIGNv
bnN0IHNpemVfdCBuc2FtcHMpIHsKICAgICAgICAgICAgY29uc3QgdWludDMyX3QgKmlucHV0ID0g
cmVpbnRlcnByZXRfY2FzdDxjb25zdCB1aW50MzJfdCAqPihpbnB1dHNbMF0pIDsKICAgICAgICAg
ICAgZmxvYXQgKm91dHB1dCA9IHJlaW50ZXJwcmV0X2Nhc3Q8ZmxvYXQgKj4ob3V0cHV0c1swXSkg
OwoKICAgICAgICAgICAgc2l6ZV90IGkgOwogICAgICAgICAgICBmb3IoaSA9IDAgOyBpIDwgbnNh
bXBzIDsgaSsrKSB7CiAgICAgICAgICAgICAgICBvdXRwdXRbaV0gPSBudG9obChpbnB1dFtpXSkg
KiBfc2NhbGFyIDsKICAgICAgICAgICAgfQogICAgICAgIH0KCiAgICAgICAgZG91YmxlIF9zY2Fs
YXIgOwp9IDsKCnN0YXRpYyB1aGQ6OmNvbnZlcnQ6OmNvbnZlcnRlcjo6c3B0ciBtYWtlX2NvbnZl
cnRfdTMyX2YzMih2b2lkKSB7CiAgICByZXR1cm4gdWhkOjpjb252ZXJ0Ojpjb252ZXJ0ZXI6OnNw
dHIobmV3IGNvbnZlcnRfdTMyX2YzMigpKSA7Cn0KCnN0YXRpYyB1aGQ6OmNvbnZlcnQ6OmNvbnZl
cnRlcjo6c3B0ciBtYWtlX2NvbnZlcnRfdTMyX3UzMih2b2lkKSB7CiAgICByZXR1cm4gdWhkOjpj
b252ZXJ0Ojpjb252ZXJ0ZXI6OnNwdHIobmV3IGNvbnZlcnRfdTMyX3UzMigpKSA7Cn0Kdm9pZCBy
ZWdpc3Rlcl9jb252ZXJ0ZXIoKSB7CiAgICB1aGQ6OmNvbnZlcnQ6OnJlZ2lzdGVyX2J5dGVzX3Bl
cl9pdGVtKCJ1MzIiLCBzaXplb2YodWludDMyX3QpKSA7CgogICAgdWhkOjpjb252ZXJ0OjppZF90
eXBlIGlkIDsKICAgIGlkLm51bV9pbnB1dHMgPSAxIDsKICAgIGlkLm51bV9vdXRwdXRzID0gMSA7
CiAgICBpZC5vdXRwdXRfZm9ybWF0ID0gImYzMiIgOwoKICAgIGlkLmlucHV0X2Zvcm1hdCA9ICJ1
MzJfaXRlbTMyX2JlIiA7CiAgICB1aGQ6OmNvbnZlcnQ6OnJlZ2lzdGVyX2NvbnZlcnRlcihpZCwg
Jm1ha2VfY29udmVydF91MzJfZjMyLCAwKSA7CgogICAgaWQub3V0cHV0X2Zvcm1hdCA9ICJ1MzIi
IDsKICAgIHVoZDo6Y29udmVydDo6cmVnaXN0ZXJfY29udmVydGVyKGlkLCAmbWFrZV9jb252ZXJ0
X3UzMl91MzIsIDApIDsKfQoK
--0000000000002617b905f6e0efdc
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000002617b905f6e0efdc--
