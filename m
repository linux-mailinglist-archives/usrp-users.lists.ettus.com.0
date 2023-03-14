Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE046B9ABD
	for <lists+usrp-users@lfdr.de>; Tue, 14 Mar 2023 17:10:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12A6C384120
	for <lists+usrp-users@lfdr.de>; Tue, 14 Mar 2023 12:10:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678810219; bh=iP3R6MKEbycSjBICLU2+qWgMt4W8hQQ/26sDosJnIK4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jQ2u30HsXS89HwMiME2Md27dyp/jDlpkeiqFFfMjSdBWpEwNgC7hoNrmV+TpOH+IV
	 FWv7vwIK7tLCCU5aK6X0VPWjC3qlfKUw7aSxo/2zAHOPaQGcz4onwK5GfgoWfT5l8m
	 cYKems0i72QifHZu1IK0djcIRlz7lJR1mt5gSzOwRSTBNGReEn/CVpjpb+p8XE+xN1
	 BVPy8MwlqspPvm1olTqAfUUcll0aUJyFzEX4Y0OpnwImbHZZ6Fu5ZhiMiRMdMgEyoE
	 tLL+U5SKCYLlOcOpXXnP42FUCHkdIf70R3dwC+p8lyJ4Ac1GywUNeBkniXrwpajPvd
	 pF/qZXb7nA5lg==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E0E7383EC4
	for <usrp-users@lists.ettus.com>; Tue, 14 Mar 2023 12:09:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="q2yDVxrf";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id bo10so11747020qvb.12
        for <usrp-users@lists.ettus.com>; Tue, 14 Mar 2023 09:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678810176;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SMdMcrysZvjm9cg1+wIWX7WsBUSgNMXycSbZ4WKoNfk=;
        b=q2yDVxrfnxxOvGQO9UuZqoY8bURDldkkgjeJtsSMxPNMldoO67iim1aVd2XS9Ktln5
         xi4rFoWT5t1K3w3yLIlOepiS2aVu6pnK+kfsJBaFuKLK2fC/1fa7QeH5ppDerF9bkOGp
         ewrDvv5gTBqFt3sI/Fr1Pf141xEuZgQACW8XU+4Av0TyvRLRfq0CsZbfaTcRa/dh3/ub
         oA0VNUsdVdQYG5YU5Niz53DfegH7qyIBxOcEpEMs3+F/3fU6qkI2TfDIOMtJBM1seAun
         tWOk5fhsbOFe9izw8+bed9JkQBvw8TB0J/6pn7GWbMPBKjXc90RLQp4XhHNTZthT/Gj7
         WCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678810176;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SMdMcrysZvjm9cg1+wIWX7WsBUSgNMXycSbZ4WKoNfk=;
        b=weBhSnO+9LRXJCHrFSGSXx1R6K76wBjuuF5Uv2JcUru+lnppbrFMW6IKFonudX3E3O
         7whtY4ByW89zOq4j9fCIaa0Z0HZoPR5C1xNYSZzPiBAFc+S+O31PWGERNcABvxguoK4+
         p5TfabmsubZMmbe1nKiA94t3WifaB8FXwn1mhfGmjcu8rhTEKaE7qzvnKux1AGGgvrMx
         CkWh6IsIYK82CBToPn3EAqf8dfMtJrl4nPeA7pgvOUx+rSNB2hCR7uKBdq5FzhF0NFFI
         AfolHbX8UaGYSC6TjqDaTN2dO7SJmcoubmaY/VQvKBNHpnPB/I7+gXfjS8hmV37IT/A4
         76UA==
X-Gm-Message-State: AO0yUKWf63dqA4wLXq0smRhDGFnKcT0ItjnWKSwWaUt7QhkheXHa59GM
	KKf07Go50fUxXv/W/rXkxHk4NSwvchQ=
X-Google-Smtp-Source: AK7set/9NT2Ax/Ejl3F21TnSF5bsfGkW/nyqy0RKZxGxDh2QSbMAKyUKX6zeAjE668BTxzsgns9iYQ==
X-Received: by 2002:a05:622a:1a0d:b0:3d3:7032:1f93 with SMTP id f13-20020a05622a1a0d00b003d370321f93mr2471225qtb.30.1678810175196;
        Tue, 14 Mar 2023 09:09:35 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id m125-20020a375883000000b007428e743508sm1974288qkb.70.2023.03.14.09.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 09:09:34 -0700 (PDT)
Message-ID: <a60694a4-aa5c-95e0-817d-642a6c0e0171@gmail.com>
Date: Tue, 14 Mar 2023 12:09:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
 <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com>
 <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
 <f64de861-4dab-89d2-11fe-686386018678@gmail.com>
 <CAB__hTQMa1cU6iQ-4zGD9__GJ8tGOnAjV07M689FmAF1R2tkqg@mail.gmail.com>
 <09552c3a-389a-e4ac-558a-7a500b3e710f@gmail.com>
 <PH0PR15MB4704FF496FFC8446310AF57CE3BE9@PH0PR15MB4704.namprd15.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH0PR15MB4704FF496FFC8446310AF57CE3BE9@PH0PR15MB4704.namprd15.prod.outlook.com>
Message-ID-Hash: WJ3JWBJXBOYBY7OFTP5NOZTPSWI7MXHK
X-Message-ID-Hash: WJ3JWBJXBOYBY7OFTP5NOZTPSWI7MXHK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WJ3JWBJXBOYBY7OFTP5NOZTPSWI7MXHK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3134324855498497796=="

This is a multi-part message in MIME format.
--===============3134324855498497796==
Content-Type: multipart/alternative;
 boundary="------------VT9eMdT222CvcXRzLO2PYq1C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------VT9eMdT222CvcXRzLO2PYq1C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/03/2023 10:27, Vermeulen, Bas (Consultant) wrote:
> The problem isn't so much the byteswapping in the int16, but the=20
> int16's being swapped.
>
> I am sending SC16's (I0 Q0 I1 Q1 I2 Q2 I3 Q3), and expect to receive=20
> the 16 bit values in the same order (Val0 Val1 Val2 Val3).
> When using sc8's, I got (I3 Q3 I2 Q2 I1 Q1 I0 Q0) which I didn't=20
> expect at all.
>
> Regards,
>
> Bas Vermeulen
Like i pointed out earlier, X310 doesn't support SC8 data, so I have no=20
idea what it will do if you try to "force" the issue.


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, March 8, 2023 8:46 PM
> *To:* Rob Kossler <rkossler@nd.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: RFNOC module sending back (or receiving)=20
> data in the wrong order
> Sent by an external sender
> -----------------------------------------------------------------------=
-
> On 08/03/2023 14:41, Rob Kossler wrote:
>> Agreed, but it doesn't seem too much to expect that UHD should=20
>> natively supply a "non-swapping" converter so that each user who=20
>> needs one doesn't have to develop it.
>> Rob
> In this case, the RFNOC code is kinda pretending that it's sending=20
> int16 integers, but the actual semantic is somewhat different.
> =C2=A0 So a non-swapping converter would happen to work in this case, b=
ut=20
> it's kind of subverting the "object model" a bit.
>
> Perhaps some kind of "raw" converter in which there's no implied=20
> object semantics.
>
>>
>> On Wed, Mar 8, 2023 at 1:45=E2=80=AFPM Marcus D. Leech=20
>> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>     On 08/03/2023 13:36, Rob Kossler wrote:
>>>     Oh yeah, I forgot.=C2=A0 Does this imply that there is no way to =
keep
>>>     UHD from swapping bytes in an rx_streamer (using X310)?=C2=A0 If =
so,
>>>     this seems like a problem for RFNoC development since the data
>>>     coming across the wire can be in any format the designer
>>>     chooses.=C2=A0 And, swapping in the FPGA is not a good solution
>>>     because you don't know the Endianness of the host.
>>>     Rob
>>     The "doctrine" has been to represent data types in their "natural
>>     network-byte-order" on the wire, and the host code
>>     =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is consist=
ent with
>>     practice in nearly-all other disciplines that send data over
>>     =C2=A0 the network (whether that's the Internet or other ethernet
>>     networks, etc).
>>
>>     For little-endian hosts, UHD has to do the swap.
>>
>>     But UHD allows you to register your own converter methods.=C2=A0 I=
've
>>     never done it myself, but I don't think it's that hard.
>>
>>
>>>
>>>     On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Marcus D. Leech
>>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>>
>>>         On 08/03/2023 11:42, Rob Kossler wrote:
>>>>         Maybe can you just change the streamer OTW & CPU format to
>>>>         "sc8" such that no byte swapping will occur?
>>>         I know that on the default X3xx builds, there's no sc8
>>>         format implemented on the USRP end.
>>>
>>>
>>>>
>>>>         On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife
>>>>         <wade.fife@ettus.com <mailto:wade.fife@ettus.com>> wrote:
>>>>
>>>>             You could swap the bytes in your block, or swap them in
>>>>             software on the host. The=C2=A0data gets rearranged by t=
he
>>>>             streamer depending on the data type configured (e.g.,
>>>>             sc16) and the endianness of the host machine.
>>>>
>>>>             Wade
>>>>
>>>>             On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas
>>>>             (Consultant) via USRP-users <usrp-users@lists.ettus.com
>>>>             <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>
>>>>                 Hi,
>>>>
>>>>                 We are developing an RFNOC module that takes I/Q
>>>>                 data, and turns that into two 8 bit values.
>>>>                 I have a test program that sends data to the RFNOC
>>>>                 module, and receives the modified data.
>>>>
>>>>                 The RFNOC module treats the two 8 bit values as one
>>>>                 signed 16 bit value.
>>>>                 When I read the data from the test program, I get
>>>>                 it in the wrong order:
>>>>
>>>>                 Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>>>>                 Receive: Val1 Val0 Val3 Val2
>>>>
>>>>                 Does anyone have any idea how to fix the order of
>>>>                 the received values?
>>>>
>>>>                 Regards,
>>>>
>>>>                 Bas Vermeulen
>>>>
>>>>                 ----------------------------------------------------=
--------------------
>>>>
>>>>
>>>>
>>>>                 CONFIDENTIALITY NOTICE: This message (including any
>>>>                 attachments) may contain Molex confidential
>>>>                 information, protected by law. If this message is
>>>>                 confidential, forwarding it to individuals, other
>>>>                 than those with a need to know, without the
>>>>                 permission of the sender, is prohibited.
>>>>
>>>>                 This message is also intended for a specific
>>>>                 individual. If you are not the intended recipient,
>>>>                 you should delete this message and are hereby
>>>>                 notified that any disclosure, copying, or
>>>>                 distribution of this message or taking of any
>>>>                 action based upon it, is strictly prohibited.
>>>>
>>>>                 English | Chinese | Japanese
>>>>                 www.molex.com/confidentiality.html
>>>>                 <http://www.molex.com/confidentiality.html>
>>>>                 _______________________________________________
>>>>                 USRP-users mailing list --
>>>>                 usrp-users@lists.ettus.com
>>>>                 <mailto:usrp-users@lists.ettus.com>
>>>>                 To unsubscribe send an email to
>>>>                 usrp-users-leave@lists.ettus.com
>>>>                 <mailto:usrp-users-leave@lists.ettus.com>
>>>>
>>>>             _______________________________________________
>>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>             <mailto:usrp-users@lists.ettus.com>
>>>>             To unsubscribe send an email to
>>>>             usrp-users-leave@lists.ettus.com
>>>>             <mailto:usrp-users-leave@lists.ettus.com>
>>>>
>>>>
>>>>         _______________________________________________
>>>>         USRP-users mailing list --usrp-users@lists.ettus.com  <mailt=
o:usrp-users@lists.ettus.com>
>>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.=
com  <mailto:usrp-users-leave@lists.ettus.com>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>
>>>         To unsubscribe send an email to
>>>         usrp-users-leave@lists.ettus.com
>>>         <mailto:usrp-users-leave@lists.ettus.com>
>>>
>>
>
>
> -----------------------------------------------------------------------=
-
>
>
>
> CONFIDENTIALITY NOTICE: This message (including any attachments) may=20
> contain Molex confidential information, protected by law. If this=20
> message is confidential, forwarding it to individuals, other than=20
> those with a need to know, without the permission of the sender, is=20
> prohibited.
>
> This message is also intended for a specific individual. If you are=20
> not the intended recipient, you should delete this message and are=20
> hereby notified that any disclosure, copying, or distribution of this=20
> message or taking of any action based upon it, is strictly prohibited.
>
> English | Chinese | Japanese
> www.molex.com/confidentiality.html

--------------VT9eMdT222CvcXRzLO2PYq1C
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/03/2023 10:27, Vermeulen, Bas
      (Consultant) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR15MB4704FF496FFC8446310AF57CE3BE9@PH0PR15MB4704.namprd15=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        The problem isn't so much the byteswapping in the int16, but the
        int16's being swapped.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I am sending SC16's (I0 Q0 I1 Q1 I2 Q2 I3 Q3), and expect to
        receive the 16 bit values in the same order (Val0 Val1 Val2
        Val3).</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        When using sc8's, I got (I3 Q3 I2 Q2 I1 Q1 I0 Q0) which I didn't
        expect at all.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Bas Vermeulen<br>
      </div>
    </blockquote>
    Like i pointed out earlier, X310 doesn't support SC8 data, so I have
    no idea what it will do if you try to "force" the issue.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR15MB4704FF496FFC8446310AF57CE3BE9@PH0PR15MB4704.namprd15=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Wednesday, March 8, 2023 8:46 PM<br>
          <b>To:</b> Rob Kossler <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:rkossler@nd.edu">&lt;rkossler@nd.edu&gt;</a><br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: RFNOC module sending back (or
          receiving) data in the wrong order</font>
        <div>=C2=A0</div>
      </div>
      <div><font color=3D"red">Sent by an external sender</font>
        <hr>
        <div class=3D"x_moz-cite-prefix">On 08/03/2023 14:41, Rob Kossler
          wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <div dir=3D"ltr">Agreed, but it doesn't seem too much to expect
            that UHD should natively supply a "non-swapping" converter
            so that each user who needs one doesn't have to develop it.
            <div>Rob</div>
          </div>
        </blockquote>
        In this case, the RFNOC code is kinda pretending that it's
        sending int16 integers, but the actual semantic is somewhat
        different.<br>
        =C2=A0 So a non-swapping converter would happen to work in this c=
ase,
        but it's kind of subverting the "object model" a bit.<br>
        <br>
        Perhaps some kind of "raw" converter in which there's no implied
        object semantics.<br>
        <br>
        <blockquote type=3D"cite"><br>
          <div class=3D"x_gmail_quote">
            <div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Mar 8, 2023 a=
t
              1:45=E2=80=AFPM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                class=3D"x_moz-txt-link-freetext moz-txt-link-freetext"
                moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0=
px
              0.8ex; border-left:1px solid rgb(204,204,204);
              padding-left:1ex">
              <div>
                <div>On 08/03/2023 13:36, Rob Kossler wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">Oh yeah, I forgot.=C2=A0 Does this imp=
ly
                    that there is no way to keep UHD from swapping bytes
                    in an rx_streamer (using X310)?=C2=A0 If so, this see=
ms
                    like a problem for RFNoC development since the data
                    coming across the wire can be in any format the
                    designer chooses.=C2=A0 And, swapping in the FPGA is =
not
                    a good solution because you don't know the
                    Endianness of the host.
                    <div>Rob</div>
                  </div>
                </blockquote>
                The "doctrine" has been to represent data types in their
                "natural network-byte-order" on the wire, and the host
                code<br>
                =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This i=
s consistent
                with practice in nearly-all other disciplines that send
                data over<br>
                =C2=A0 the network (whether that's the Internet or other
                ethernet networks, etc).<br>
                <br>
                For little-endian hosts, UHD has to do the swap.<br>
                <br>
                But UHD allows you to register your own converter
                methods.=C2=A0 I've never done it myself, but I don't thi=
nk
                it's that hard.<br>
                <br>
                <br>
                <blockquote type=3D"cite"><br>
                  <div class=3D"x_gmail_quote">
                    <div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Mar 8=
,
                      2023 at 12:07=E2=80=AFPM Marcus D. Leech &lt;<a
                        href=3D"mailto:patchvonbraun@gmail.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">p=
atchvonbraun@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"x_gmail_quote" style=3D"margin:0=
px
                      0px 0px 0.8ex; border-left:1px solid
                      rgb(204,204,204); padding-left:1ex">
                      <div>
                        <div>On 08/03/2023 11:42, Rob Kossler wrote:<br>
                        </div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">Maybe can you just change the
                            streamer OTW &amp; CPU format to "sc8" such
                            that no byte swapping will occur?</div>
                        </blockquote>
                        I know that on the default X3xx builds, there's
                        no sc8 format implemented on the USRP end.<br>
                        <br>
                        <br>
                        <blockquote type=3D"cite"><br>
                          <div class=3D"x_gmail_quote">
                            <div dir=3D"ltr" class=3D"x_gmail_attr">On Tu=
e,
                              Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife &=
lt;<a
                                href=3D"mailto:wade.fife@ettus.com"
                                target=3D"_blank"
                                class=3D"x_moz-txt-link-freetext
                                moz-txt-link-freetext"
                                moz-do-not-send=3D"true">wade.fife@ettus.=
com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"x_gmail_quote"
                              style=3D"margin:0px 0px 0px 0.8ex;
                              border-left:1px solid rgb(204,204,204);
                              padding-left:1ex">
                              <div dir=3D"ltr">You could swap the bytes i=
n
                                your block, or swap them in software on
                                the host. The=C2=A0data gets rearranged b=
y
                                the streamer depending on the data type
                                configured (e.g., sc16) and the
                                endianness of the host machine.
                                <div><br>
                                </div>
                                <div>Wade</div>
                              </div>
                              <br>
                              <div class=3D"x_gmail_quote">
                                <div dir=3D"ltr" class=3D"x_gmail_attr">O=
n
                                  Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Ver=
meulen,
                                  Bas (Consultant) via USRP-users &lt;<a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                    class=3D"x_moz-txt-link-freetext
                                    moz-txt-link-freetext"
                                    moz-do-not-send=3D"true">usrp-users@l=
ists.ettus.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"x_gmail_quote"
                                  style=3D"margin:0px 0px 0px 0.8ex;
                                  border-left:1px solid
                                  rgb(204,204,204); padding-left:1ex">
                                  <div>
                                    <div dir=3D"ltr">
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        Hi,</div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        <br>
                                      </div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        We are developing an RFNOC
                                        module that takes I/Q data, and
                                        turns that into two 8 bit
                                        values.</div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        I have a test program that sends
                                        data to the RFNOC module, and
                                        receives the modified data.</div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        <br>
                                      </div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        The RFNOC module treats the two
                                        8 bit values as one signed 16
                                        bit value.</div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        When I read the data from the
                                        test program, I get it in the
                                        wrong order:<br>
                                        <br>
                                        Send: Re0 Im0 Re1 Im1 Re2 Im2
                                        Re3 Im3 <br>
                                      </div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        Receive: Val1 Val0 Val3 Val2</div=
>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        <br>
                                      </div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        Does anyone have any idea how to
                                        fix the order of the received
                                        values?</div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        <br>
                                      </div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        Regards,</div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        <br>
                                      </div>
                                      <div
                                        style=3D"font-family:Calibri,Aria=
l,Helvetica,sans-serif;
                                        font-size:12pt;
                                        color:rgb(0,0,0);
                                        background-color:rgb(255,255,255)=
">
                                        Bas Vermeulen<br>
                                      </div>
                                      <br>
                                      <hr>
                                      <font size=3D"1" face=3D"Arial"
                                        color=3D"Gray"><br>
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
                                        <a
                                          href=3D"http://www.molex.com/co=
nfidentiality.html"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true">www.mo=
lex.com/confidentiality.html</a><br>
                                      </font></div>
_______________________________________________<br>
                                    USRP-users mailing list -- <a
                                      href=3D"mailto:usrp-users@lists.ett=
us.com"
                                      target=3D"_blank"
                                      class=3D"x_moz-txt-link-freetext
                                      moz-txt-link-freetext"
                                      moz-do-not-send=3D"true">
                                      usrp-users@lists.ettus.com</a><br>
                                    To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                      class=3D"x_moz-txt-link-freetext
                                      moz-txt-link-freetext"
                                      moz-do-not-send=3D"true">
                                      usrp-users-leave@lists.ettus.com</a=
><br>
                                  </div>
                                </blockquote>
                              </div>
_______________________________________________<br>
                              USRP-users mailing list -- <a
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank"
                                class=3D"x_moz-txt-link-freetext
                                moz-txt-link-freetext"
                                moz-do-not-send=3D"true">
                                usrp-users@lists.ettus.com</a><br>
                              To unsubscribe send an email to <a
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank"
                                class=3D"x_moz-txt-link-freetext
                                moz-txt-link-freetext"
                                moz-do-not-send=3D"true">
                                usrp-users-leave@lists.ettus.com</a><br>
                            </blockquote>
                          </div>
                          <br>
                          <fieldset></fieldset>
                          <pre>__________________________________________=
_____
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" class=3D"x_moz-txt-link-freetext moz-txt-link-freetext"=
 moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" class=3D"x_moz-txt-link-freetext moz-txt-lin=
k-freetext" moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                        </blockquote>
                        <br>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list -- <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">
                        usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        target=3D"_blank" class=3D"x_moz-txt-link-freetex=
t
                        moz-txt-link-freetext" moz-do-not-send=3D"true">
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
        <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.molex.co=
m/confidentiality.html">www.molex.com/confidentiality.html</a><br>
      </font>
    </blockquote>
    <br>
  </body>
</html>

--------------VT9eMdT222CvcXRzLO2PYq1C--

--===============3134324855498497796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3134324855498497796==--
