Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A2A6B1267
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 20:47:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CDE9384E70
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 14:47:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678304823; bh=bkHtZ+yXw1nXsndvHbRe7ZCGF0PPdnmHU4FV8TGPyDE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=j47PQLcd+iiJg8DqoMYO/g6fD///DNJzP4Cy/q9G5XDmBVZypvp/yVDA4ltM6doMo
	 u+sezn2D0urIUqPRxLo7BfPuzVorQYiseT4tpduDLbebGiDy4udCk09fYFce4iF2+8
	 5HtI6TxFXxQMp5Q7PxNugPglSEPwqCX7sh74QEBVGzWByty9UzHBEaNKGLjhJ5Xzjl
	 WztYYxdL9SFlM89FmxxSY+ix71JT3+CxP2cExPrgCuxr4STbIChnF2PEdhqkUODMd6
	 wzPMdi744Y3BzfsF+LtQrI8/bmH0XMpLaswEkVFngqNXGeVHBNRQKPfl3HAfRfIoX+
	 0RdkTXuSeXasg==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 42B69384E38
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 14:46:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RVqEFEQf";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id z6so19459730qtv.0
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 11:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678304788;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwSR15shfEJaX+S2EAXZEK2uqVxJLz5F/BvNlyyOzTw=;
        b=RVqEFEQfVfIVHLBtOYUWUbPxnyZbDTaxKHF+8+aeDCKkQLCX3/tVqF+j1OVejvFHAq
         XjPCX5BuqgsEJomDCCVGrBTrtoIcNzapjUmFntGFcMKtNpLzex9fKZ+UGKAlCNZ1QIE2
         N7d4ulKR9piddgkbaA5cklgxHNFx8ux9ppzvH2znfJCofMeTkYKKX1tuLwDFooIhOKLl
         21ytRPxFMpgll4GtsB/gC9xM87JG+GJfIXVlTzn20xMvlT2eBFOwnV8XXle4U4OnFYXv
         94GXwezJDJ0Gcgi56EWamIN7S2lIz2W5i104ils+1QfGnif4d4FqQnwHMQ5rTQ2lQRsA
         wt1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678304788;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NwSR15shfEJaX+S2EAXZEK2uqVxJLz5F/BvNlyyOzTw=;
        b=PtPUnnwz8dtc3116Fu0deUdlrZCF2f4cCniYyUy5ja34DuTfV7uSR0OknSV+HRvIfN
         Nvp0IKX2JAIaPKh1kTVqL32xGsERdsHmiMuqLDGOPwBx+3B2zp4gqFKvg4bn5RgGD2kH
         O9kryrZGg9w3CbDJ4+LZvY1RU2r/PEB/a5Mfr+fKTXSGgd866jzm8QGFHaLxBYGXx5ms
         2ONqp7rKP/VRXfo6axNmyaeqg06x4Hh4CnFpV43lM1p4NSXyZUqQCf9N00fKXUGuFuQb
         5BeZFpNmQ/n6GuuiljE14tkSdD/glGQz7uHmh3GcAYuUc5G+mRklaVz7b1i/nwP1zzZb
         lqwQ==
X-Gm-Message-State: AO0yUKXKXhWMCJhQQkR477zWSilhRt3Umw9+ZSr+V3pph9B4CD5f/hl4
	tSl9TAbWeUXAaPj6ClHicIasqSkYA0Y=
X-Google-Smtp-Source: AK7set9jSk5YCaZ1k2+ox6Xj3sI6fdK5h6StYWvgEwgudqW3YVJyjg2RxPykn7cUZGubSC3Cd2XwwA==
X-Received: by 2002:a05:622a:45:b0:3b9:ca95:da6e with SMTP id y5-20020a05622a004500b003b9ca95da6emr34775895qtw.44.1678304788628;
        Wed, 08 Mar 2023 11:46:28 -0800 (PST)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id y9-20020ac87089000000b003bfaae103f6sm12170404qto.89.2023.03.08.11.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 11:46:28 -0800 (PST)
Message-ID: <09552c3a-389a-e4ac-558a-7a500b3e710f@gmail.com>
Date: Wed, 8 Mar 2023 14:46:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
 <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com>
 <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
 <f64de861-4dab-89d2-11fe-686386018678@gmail.com>
 <CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmail.com>
Message-ID-Hash: RQWWISW4SLAFLAIFYMUFWFOACVFBGFDN
X-Message-ID-Hash: RQWWISW4SLAFLAIFYMUFWFOACVFBGFDN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQWWISW4SLAFLAIFYMUFWFOACVFBGFDN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0232640886424382828=="

This is a multi-part message in MIME format.
--===============0232640886424382828==
Content-Type: multipart/alternative;
 boundary="------------fS1QzQGqdOAxojAHwNLq87hl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fS1QzQGqdOAxojAHwNLq87hl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/03/2023 14:41, Rob Kossler wrote:
> Agreed, but it doesn't seem too much to expect that UHD should=20
> natively supply a "non-swapping" converter so that each user who needs=20
> one doesn't have to develop it.
> Rob
In this case, the RFNOC code is kinda pretending that it's sending int16=20
integers, but the actual semantic is somewhat different.
 =C2=A0 So a non-swapping converter would happen to work in this case, bu=
t=20
it's kind of subverting the "object model" a bit.

Perhaps some kind of "raw" converter in which there's no implied object=20
semantics.

>
> On Wed, Mar 8, 2023 at 1:45=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 08/03/2023 13:36, Rob Kossler wrote:
>>     Oh yeah, I forgot.=C2=A0 Does this imply that there is no way to k=
eep
>>     UHD from swapping bytes in an rx_streamer (using X310)?=C2=A0 If s=
o,
>>     this seems like a problem for RFNoC development since the data
>>     coming across the wire can be in any format the designer
>>     chooses.=C2=A0 And, swapping in the FPGA is not a good solution
>>     because you don't know the Endianness of the host.
>>     Rob
>     The "doctrine" has been to represent data types in their "natural
>     network-byte-order" on the wire, and the host code
>     =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is consiste=
nt with
>     practice in nearly-all other disciplines that send data over
>     =C2=A0 the network (whether that's the Internet or other ethernet
>     networks, etc).
>
>     For little-endian hosts, UHD has to do the swap.
>
>     But UHD allows you to register your own converter methods. I've
>     never done it myself, but I don't think it's that hard.
>
>
>>
>>     On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 08/03/2023 11:42, Rob Kossler wrote:
>>>         Maybe can you just change the streamer OTW & CPU format to
>>>         "sc8" such that no byte swapping will occur?
>>         I know that on the default X3xx builds, there's no sc8 format
>>         implemented on the USRP end.
>>
>>
>>>
>>>         On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife
>>>         <wade.fife@ettus.com> wrote:
>>>
>>>             You could swap the bytes in your block, or swap them in
>>>             software on the host. The=C2=A0data gets rearranged by th=
e
>>>             streamer depending on the data type configured (e.g.,
>>>             sc16) and the endianness of the host machine.
>>>
>>>             Wade
>>>
>>>             On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas
>>>             (Consultant) via USRP-users <usrp-users@lists.ettus.com>
>>>             wrote:
>>>
>>>                 Hi,
>>>
>>>                 We are developing an RFNOC module that takes I/Q
>>>                 data, and turns that into two 8 bit values.
>>>                 I have a test program that sends data to the RFNOC
>>>                 module, and receives the modified data.
>>>
>>>                 The RFNOC module treats the two 8 bit values as one
>>>                 signed 16 bit value.
>>>                 When I read the data from the test program, I get it
>>>                 in the wrong order:
>>>
>>>                 Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>>>                 Receive: Val1 Val0 Val3 Val2
>>>
>>>                 Does anyone have any idea how to fix the order of
>>>                 the received values?
>>>
>>>                 Regards,
>>>
>>>                 Bas Vermeulen
>>>
>>>                 -----------------------------------------------------=
-------------------
>>>
>>>
>>>
>>>                 CONFIDENTIALITY NOTICE: This message (including any
>>>                 attachments) may contain Molex confidential
>>>                 information, protected by law. If this message is
>>>                 confidential, forwarding it to individuals, other
>>>                 than those with a need to know, without the
>>>                 permission of the sender, is prohibited.
>>>
>>>                 This message is also intended for a specific
>>>                 individual. If you are not the intended recipient,
>>>                 you should delete this message and are hereby
>>>                 notified that any disclosure, copying, or
>>>                 distribution of this message or taking of any action
>>>                 based upon it, is strictly prohibited.
>>>
>>>                 English | Chinese | Japanese
>>>                 www.molex.com/confidentiality.html
>>>                 <http://www.molex.com/confidentiality.html>
>>>                 _______________________________________________
>>>                 USRP-users mailing list -- usrp-users@lists.ettus.com
>>>                 To unsubscribe send an email to
>>>                 usrp-users-leave@lists.ettus.com
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>

--------------fS1QzQGqdOAxojAHwNLq87hl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/03/2023 14:41, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Agreed, but it doesn't seem too much to expect tha=
t
        UHD should natively supply a "non-swapping" converter so that
        each user who needs one doesn't have to develop it.
        <div>Rob</div>
      </div>
    </blockquote>
    In this case, the RFNOC code is kinda pretending that it's sending
    int16 integers, but the actual semantic is somewhat different.<br>
    =C2=A0 So a non-swapping converter would happen to work in this case,=
 but
    it's kind of subverting the "object model" a bit.<br>
    <br>
    Perhaps some kind of "raw" converter in which there's no implied
    object semantics.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 8, 2023 at 1:45=
=E2=80=AFPM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 08/03/2023 13:36, Rob Kossler wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Oh yeah, I forgot.=C2=A0 Does this imply t=
hat
                there is no way to keep UHD from swapping bytes in an
                rx_streamer (using X310)?=C2=A0 If so, this seems like a
                problem for RFNoC development since the data coming
                across the wire can be in any format the designer
                chooses.=C2=A0 And, swapping in the FPGA is not a good
                solution because you don't know the Endianness of the
                host.
                <div>Rob</div>
              </div>
            </blockquote>
            The "doctrine" has been to represent data types in their
            "natural network-byte-order" on the wire, and the host code<b=
r>
            =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is co=
nsistent with
            practice in nearly-all other disciplines that send data over<=
br>
            =C2=A0 the network (whether that's the Internet or other ethe=
rnet
            networks, etc).<br>
            <br>
            For little-endian hosts, UHD has to do the swap.<br>
            <br>
            But UHD allows you to register your own converter methods.=C2=
=A0
            I've never done it myself, but I don't think it's that hard.<=
br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 8, 2023=
 at
                  12:07=E2=80=AFPM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 08/03/2023 11:42, Rob Kossler wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Maybe can you just change the
                        streamer OTW &amp; CPU format to "sc8" such that
                        no byte swapping will occur?</div>
                    </blockquote>
                    I know that on the default X3xx builds, there's no
                    sc8 format implemented on the USRP end.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar=
 7,
                          2023 at 10:31=E2=80=AFPM Wade Fife &lt;<a
                            href=3D"mailto:wade.fife@ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">wade.fife@ett=
us.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">You could swap the bytes in
                            your block, or swap them in software on the
                            host. The=C2=A0data gets rearranged by the
                            streamer depending on the data type
                            configured (e.g., sc16) and the endianness
                            of the host machine.
                            <div><br>
                            </div>
                            <div>Wade</div>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">On Tue,
                              Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, B=
as
                              (Consultant) via USRP-users &lt;<a
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">usrp-user=
s@lists.ettus.com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote"
                              style=3D"margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div>
                                <div dir=3D"ltr">
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Hi,</div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                  </div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">We
                                    are developing an RFNOC module that
                                    takes I/Q data, and turns that into
                                    two 8 bit values.</div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">I
                                    have a test program that sends data
                                    to the RFNOC module, and receives
                                    the modified data.</div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                  </div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">The
                                    RFNOC module treats the two 8 bit
                                    values as one signed 16 bit value.</d=
iv>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">When
                                    I read the data from the test
                                    program, I get it in the wrong
                                    order:<br>
                                    <br>
                                    Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3
                                    Im3 <br>
                                  </div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Receive:
                                    Val1 Val0 Val3 Val2</div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                  </div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Does
                                    anyone have any idea how to fix the
                                    order of the received values?</div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                  </div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Regards,</div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                                  </div>
                                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Bas
                                    Vermeulen<br>
                                  </div>
                                  <br>
                                  <hr> <font size=3D"1" face=3D"Arial"
                                    color=3D"Gray"><br>
                                    <br>
                                    <br>
                                    CONFIDENTIALITY NOTICE: This message
                                    (including any attachments) may
                                    contain Molex confidential
                                    information, protected by law. If
                                    this message is confidential,
                                    forwarding it to individuals, other
                                    than those with a need to know,
                                    without the permission of the
                                    sender, is prohibited.<br>
                                    <br>
                                    This message is also intended for a
                                    specific individual. If you are not
                                    the intended recipient, you should
                                    delete this message and are hereby
                                    notified that any disclosure,
                                    copying, or distribution of this
                                    message or taking of any action
                                    based upon it, is strictly
                                    prohibited.<br>
                                    <br>
                                    English | Chinese | Japanese<br>
                                    <a
                                      href=3D"http://www.molex.com/confid=
entiality.html"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true">www.molex.=
com/confidentiality.html</a><br>
                                  </font> </div>
_______________________________________________<br>
                                USRP-users mailing list -- <a
                                  href=3D"mailto:usrp-users@lists.ettus.c=
om"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"
                                  class=3D"moz-txt-link-freetext">usrp-us=
ers@lists.ettus.com</a><br>
                                To unsubscribe send an email to <a
                                  href=3D"mailto:usrp-users-leave@lists.e=
ttus.com"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"
                                  class=3D"moz-txt-link-freetext">usrp-us=
ers-leave@lists.ettus.com</a><br>
                              </div>
                            </blockquote>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          To unsubscribe send an email to <a
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------fS1QzQGqdOAxojAHwNLq87hl--

--===============0232640886424382828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0232640886424382828==--
