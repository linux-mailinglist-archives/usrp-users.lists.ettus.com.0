Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F74F6B1232
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 20:42:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4258B384FE6
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 14:42:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678304526; bh=ji7My0eXAHPMnrTHFt02hlWXY2AqRKdxXKG609LSDDc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HQTZRv9xuXmy3ud8G3dtae7+1W+MAddI5PZalBUDR8EBcGg75aVW71jAEv/rVxD68
	 TXfrG7yS/NXhipGOdiRLuptlU/BhU0dabNwTneiNrHEx7fXZOagfV55Pbryd2sg0rl
	 MpN8F5Lr+nM6UT8vc8/w/gT4o9CAA0dakmE6eWnNMa+P3nxhn8DCTIpBI1u5G5cp70
	 YiEV9ZcjuyAuVaFIklBJGQPdaES8OLg3jUXbGilow+ypOkZG4IbEMP6VulALnOEGta
	 QQOmVgQPEMm7gFX1SuHoIYGApjlGPUFc9wrROCeZqIkZG5u7q419q9Rw1o0ADxs5/S
	 wJ5jzuvygc7xQ==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AC5A384E4D
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 14:41:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QpY2kru2";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id cy23so70057213edb.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 11:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1678304490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8RkULq+TeQJXSn5d70ZD8DMBbsSDLz5a2K6NFVh0Vo8=;
        b=QpY2kru2ADd5gXbKi8l0mLZUhH3BqeW0udBDeYfwhKEUBxfByGnFzmHgN9Elu03yFk
         wo3uwgXf2m7L9itBOaNmg1cQ3VkbBGXm7APlREuO4oldqtGLnyETfbvv6/eALSMIcaiL
         YMRT7v1ctAIBBnqdqDHp+z5ZiSNZn6y74rMusz0iRal577V1SA4jypocyAYkW7nDlDmZ
         a3hXUxDmlLvvvYnkq7xbMruWG7I9WUvUZCSpmTYXtH9o+Y9i6C/svB0kNMtonep/4Do9
         9+jdKl2+LoBsxmWrn0RGMoGi8hmBi6wjZ8/poNj7xGvXo2Ne17TtSFzAQENyhjY8+/Q0
         N+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678304490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RkULq+TeQJXSn5d70ZD8DMBbsSDLz5a2K6NFVh0Vo8=;
        b=DubrxroSpB+5OYmb1rcP0ntZ3e1ObcDgSGDdwIEYVHNj6lubg/wqhRxkj9gvYTFqIE
         HnNRn6wb+WqEPkOckA0VXy89CFWDgpSyZt6vBXKmYP5acE0Lj48xzkv9oeiaAQM8XHvU
         nDrGr0Qg3L6acjX/htTJXohe/WYynr2ry4XcfSrj5JTK+5MWUK2S5NenkBMSh6WDdMub
         hrlO8HyzUSQTMKBTI/sMdnxgplF1ewmyRwsZ4108CbceGVF9n9jd7jZtQnAcPrWJqBpy
         hgnRdBHm1tdLjtZvVIzIzSHH8ZfeBXXr+eP8MLZrXL7iG+EfiiI5uad5tNs1dtqyxMmj
         kaiQ==
X-Gm-Message-State: AO0yUKU1HOuZt4xD7K3tYUNT5JA4rx2enkzbQKoeHQbVlBoHdNJbtlWX
	EjHOujxd0fpxuSxbrO+tTvKSW/9tWjDZubnM2Gd0qE3BoJ1CjMp5
X-Google-Smtp-Source: AK7set90Ok/5rLf+w/vbkjc4AK/V3fluTDoy+VT0CRfjVg4qmxLpK91WuxEi/g29Eyok86YcyFtzI1NeLl3HGCLZSpc=
X-Received: by 2002:a50:8a9d:0:b0:4bc:5de1:ee5 with SMTP id
 j29-20020a508a9d000000b004bc5de10ee5mr10718455edj.2.1678304490346; Wed, 08
 Mar 2023 11:41:30 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
 <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com> <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
 <f64de861-4dab-89d2-11fe-686386018678@gmail.com>
In-Reply-To: <f64de861-4dab-89d2-11fe-686386018678@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Mar 2023 14:41:18 -0500
Message-ID: <CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Z7X7HZY3XC2QY4VAIGWAD2X2XR4OHAZ2
X-Message-ID-Hash: Z7X7HZY3XC2QY4VAIGWAD2X2XR4OHAZ2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z7X7HZY3XC2QY4VAIGWAD2X2XR4OHAZ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4586037043811326351=="

--===============4586037043811326351==
Content-Type: multipart/alternative; boundary="000000000000f90e8b05f668b629"

--000000000000f90e8b05f668b629
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Agreed, but it doesn't seem too much to expect that UHD should natively
supply a "non-swapping" converter so that each user who needs one doesn't
have to develop it.
Rob

On Wed, Mar 8, 2023 at 1:45=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 08/03/2023 13:36, Rob Kossler wrote:
>
> Oh yeah, I forgot.  Does this imply that there is no way to keep UHD from
> swapping bytes in an rx_streamer (using X310)?  If so, this seems like a
> problem for RFNoC development since the data coming across the wire can b=
e
> in any format the designer chooses.  And, swapping in the FPGA is not a
> good solution because you don't know the Endianness of the host.
> Rob
>
> The "doctrine" has been to represent data types in their "natural
> network-byte-order" on the wire, and the host code
>   can do whatever it needs to do.   This is consistent with practice in
> nearly-all other disciplines that send data over
>   the network (whether that's the Internet or other ethernet networks,
> etc).
>
> For little-endian hosts, UHD has to do the swap.
>
> But UHD allows you to register your own converter methods.  I've never
> done it myself, but I don't think it's that hard.
>
>
>
> On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
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
>>> You could swap the bytes in your block, or swap them in software on the
>>> host. The data gets rearranged by the streamer depending on the data ty=
pe
>>> configured (e.g., sc16) and the endianness of the host machine.
>>>
>>> Wade
>>>
>>> On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via
>>> USRP-users <usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> We are developing an RFNOC module that takes I/Q data, and turns that
>>>> into two 8 bit values.
>>>> I have a test program that sends data to the RFNOC module, and receive=
s
>>>> the modified data.
>>>>
>>>> The RFNOC module treats the two 8 bit values as one signed 16 bit valu=
e.
>>>> When I read the data from the test program, I get it in the wrong orde=
r:
>>>>
>>>> Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>>>> Receive: Val1 Val0 Val3 Val2
>>>>
>>>> Does anyone have any idea how to fix the order of the received values?
>>>>
>>>> Regards,
>>>>
>>>> Bas Vermeulen
>>>>
>>>> ------------------------------
>>>>
>>>>
>>>>
>>>> CONFIDENTIALITY NOTICE: This message (including any attachments) may
>>>> contain Molex confidential information, protected by law. If this mess=
age
>>>> is confidential, forwarding it to individuals, other than those with a=
 need
>>>> to know, without the permission of the sender, is prohibited.
>>>>
>>>> This message is also intended for a specific individual. If you are no=
t
>>>> the intended recipient, you should delete this message and are hereby
>>>> notified that any disclosure, copying, or distribution of this message=
 or
>>>> taking of any action based upon it, is strictly prohibited.
>>>>
>>>> English | Chinese | Japanese
>>>> www.molex.com/confidentiality.html
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
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
>
>

--000000000000f90e8b05f668b629
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Agreed, but it doesn&#39;t seem too much to expect that UH=
D should natively supply a &quot;non-swapping&quot; converter so that each =
user who needs one doesn&#39;t have to develop it.<div>Rob</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar=
 8, 2023 at 1:45=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 08/03/2023 13:36, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Oh yeah, I forgot.=C2=A0 Does this imply that there =
is
        no way to keep UHD from swapping bytes in an rx_streamer (using
        X310)?=C2=A0 If so, this seems like a problem for RFNoC development
        since the data coming across the wire can be in any format the
        designer chooses.=C2=A0 And, swapping in the FPGA is not a good
        solution because you don&#39;t know the Endianness of the host.
        <div>Rob</div>
      </div>
    </blockquote>
    The &quot;doctrine&quot; has been to represent data types in their &quo=
t;natural
    network-byte-order&quot; on the wire, and the host code<br>
    =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is consistent w=
ith practice
    in nearly-all other disciplines that send data over<br>
    =C2=A0 the network (whether that&#39;s the Internet or other ethernet
    networks, etc).<br>
    <br>
    For little-endian hosts, UHD has to do the swap.<br>
    <br>
    But UHD allows you to register your own converter methods.=C2=A0 I&#39;=
ve
    never done it myself, but I don&#39;t think it&#39;s that hard.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 8, 2023 at
          12:07=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 08/03/2023 11:42, Rob Kossler wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Maybe can you just change the streamer OTW
                &amp; CPU format to &quot;sc8&quot; such that no byte swapp=
ing
                will occur?</div>
            </blockquote>
            I know that on the default X3xx builds, there&#39;s no sc8
            format implemented on the USRP end.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 a=
t
                  10:31=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fif=
e@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">You could swap the bytes in your block,
                    or swap them in software on the host. The=C2=A0data get=
s
                    rearranged by the streamer depending on the data
                    type configured (e.g., sc16) and the endianness of
                    the host machine.
                    <div><br>
                    </div>
                    <div>Wade</div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7,
                      2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) v=
ia
                      USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div>
                        <div dir=3D"ltr">
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">Hi,</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)"><br>
                          </div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">We
                            are developing an RFNOC module that takes
                            I/Q data, and turns that into two 8 bit
                            values.</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">I
                            have a test program that sends data to the
                            RFNOC module, and receives the modified
                            data.</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)"><br>
                          </div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">The
                            RFNOC module treats the two 8 bit values as
                            one signed 16 bit value.</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">When
                            I read the data from the test program, I get
                            it in the wrong order:<br>
                            <br>
                            Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3 <br>
                          </div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">Receive:
                            Val1 Val0 Val3 Val2</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)"><br>
                          </div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">Does
                            anyone have any idea how to fix the order of
                            the received values?</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)"><br>
                          </div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">Regards,</div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)"><br>
                          </div>
                          <div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">Bas
                            Vermeulen<br>
                          </div>
                          <br>
                          <hr> <font size=3D"1" face=3D"Arial" color=3D"Gra=
y"><br>
                            <br>
                            <br>
                            CONFIDENTIALITY NOTICE: This message
                            (including any attachments) may contain
                            Molex confidential information, protected by
                            law. If this message is confidential,
                            forwarding it to individuals, other than
                            those with a need to know, without the
                            permission of the sender, is prohibited.<br>
                            <br>
                            This message is also intended for a specific
                            individual. If you are not the intended
                            recipient, you should delete this message
                            and are hereby notified that any disclosure,
                            copying, or distribution of this message or
                            taking of any action based upon it, is
                            strictly prohibited.<br>
                            <br>
                            English | Chinese | Japanese<br>
                            <a href=3D"http://www.molex.com/confidentiality=
.html" target=3D"_blank">www.molex.com/confidentiality.html</a><br>
                          </font> </div>
                        _______________________________________________<br>
                        USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
                      </div>
                    </blockquote>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000f90e8b05f668b629--

--===============4586037043811326351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4586037043811326351==--
