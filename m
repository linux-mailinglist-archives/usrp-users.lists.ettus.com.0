Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81182A3CD
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 23:16:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C95338577E
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 17:16:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704924983; bh=VKe9v2f6Og2ryJ5FBJ9LIBJi+yuETg/k3rb2tG75Ge4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zwCzK9Iuq1RTy5iJlnCZzaB/L0slazj7flbGvahjLFFu5Nyvjn22uchwVkYlEP9Wg
	 K+BfLSFD2v3SXzw+HxmkCbXtZ58T81eLE6+ZvqpS9llG1aNuir+NB/XXCTq2dQGNG1
	 /zhonBTkhtUvpsL/pHO7jE3JhzSx2prRbylTDxq/Y6/Ze2/xkt+ot5gbHiSAIoSK4t
	 Ti4luhcDUi0B/e+9IEMiVtIqOqDceFQ3BAH7fEFLZVNcDt6qa5UpEqgCO7Wnr0D8Os
	 Ilf4zVjuIKTCmGs90zrSNSoA+DpAKOMzVfR1lVhydALqJQjOgH4LhsiYP0AKIRk+0b
	 iLN9KL1o3q7QQ==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id A92573856A0
	for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 17:15:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KFh6EVAW";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7831389c7daso379631785a.2
        for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 14:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704924947; x=1705529747; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iCJlurUT9AsMUPHcBQlyYkIHuZVkWSYjxWbOkKOx4vM=;
        b=KFh6EVAWh/MsPjN8C9Jgt52z55XCURlBbhWVeYoyq3LTWe/EbtgoUH3Rwo3fvzbXqd
         IW9Rgfb8UFN2A9jh6mjlKoPIBWvn1flh2zuofu4moPYd86zIauStGKlFoI1xY18aH3Im
         HB4zSOpYRIP/goEmhZORhbYH+qPOvJa+f27DtqtD4q5ENYXTVduxOc/f90GwZAHFlSxd
         AOdkRa218eOsajANyRMN3DZ3eLKYWPxPAPXmJhRQd3uGsbK0ql1ZzoeWH/2lJTS6uXOw
         6A51BJ/CKNWvDgbU0Va9XbDjvjq9u6fCe9caDyMo28fituMqYu8O9MEEAT3/rg5G9HWY
         8NiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704924947; x=1705529747;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iCJlurUT9AsMUPHcBQlyYkIHuZVkWSYjxWbOkKOx4vM=;
        b=JkBvhsAbmMQmsKhtiz1nKJyD1YnagP4FbCsc6+EG1aqC0kMiEDq1zJz/TyuE/dG0+l
         WkH2tLe+V4QtK5HuEMsNRFv/UOGjYeX+Dhm80AubDDDQwmVe3LHKHO+mzas+Sl7QlKev
         vZl7gh0Dx3DeDmwPWd1KcyscppENtJ53sgS9utKy8xq8TI6GJ7HTAvTljfrDrWsNy5wL
         piiZKwlM8GNa5Qe4oro3X1XNEjIJ8qxwO9kJMUmbdJgj2BaNrTAq6iHg21af8IFdzMVC
         ZH8cSqaWBvXMKvYJ4NlN8FQmyIADqr5ikob4zrjq0V58d+jOG18vQdBcadPETrnQg3uZ
         TjVQ==
X-Gm-Message-State: AOJu0YzlDgTfu3wbTpZsgsxP1SQBaRu7V1G4gobzKjBu3D8ejtY4FTRl
	5EuY8qBJ2ZhZ6f+ShIbsaXdUpa8un1M=
X-Google-Smtp-Source: AGHT+IFyYpfLYRXO4U8osGB9F2A40Te3zrgydQ6uljrb+rbfmsY7/+nhtsJcKy2/fzHN3ubDZlNR1g==
X-Received: by 2002:a05:620a:f:b0:783:1e4c:b601 with SMTP id j15-20020a05620a000f00b007831e4cb601mr339431qki.25.1704924946912;
        Wed, 10 Jan 2024 14:15:46 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id po26-20020a05620a385a00b0078319e86873sm1916794qkn.14.2024.01.10.14.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 14:15:46 -0800 (PST)
Message-ID: <d184c511-bdf2-4bbb-91cb-a4c1b8412727@gmail.com>
Date: Wed, 10 Jan 2024 17:15:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Jimenez, Samuel" <sjimenez@curtisswright.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <224b1c6c97e246349b3344c199353309@curtisswright.com>
 <a0aed50d-f79d-477f-9ab6-9e32eee251d2@gmail.com>
 <56f3ab9fb49d48f1ab5da7ccdad71f11@curtisswright.com>
 <99ee9f2c-6b31-4faa-8560-3685517f42ce@gmail.com>
 <560add163b054e1b8454938d54cd3f55@curtisswright.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <560add163b054e1b8454938d54cd3f55@curtisswright.com>
Message-ID-Hash: ZFPTVUT7QS6UFDS2K4X4HSPXY2W6A2TR
X-Message-ID-Hash: ZFPTVUT7QS6UFDS2K4X4HSPXY2W6A2TR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Full Enclosed Serial Console [EXTERNAL]
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZFPTVUT7QS6UFDS2K4X4HSPXY2W6A2TR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2199593364802340752=="

This is a multi-part message in MIME format.
--===============2199593364802340752==
Content-Type: multipart/alternative;
 boundary="------------uM6jv0RX70TdxIlZm8UqkA0W"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uM6jv0RX70TdxIlZm8UqkA0W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/01/2024 17:05, Jimenez, Samuel wrote:
>
> This is what I have:
>
> $ ls -l /dev/serial/by-id/
>
> total 0
>
> lrwxrwxrwx 1 root root 13 Jan 10 16:49=20
> usb-Digilent_Digilent_USB_Device_2516351E882F-if00-port0 -> ../../ttyUS=
B0
>
> lrwxrwxrwx 1 root root 13 Jan 10 16:49=20
> usb-Digilent_Digilent_USB_Device_2516351E882F-if01-port0 -> ../../ttyUS=
B1
>
> *Samuel Jimenez***
>
> Software Dev Engineer, Sr.
>
> *Curtiss-Wright*
>
> 20130 Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United States
>
> T: 703.840.6731
>
> sjimenez@curtisswright.com | www.curtisswrightds.com
>
Hmm, I don't know then.=C2=A0 I don't have an E320 in my local stash of=20
USRPs, so I'm going by the E310.

The document for the serial interface for the E320 clearly indicates=20
that there should be two serial ports--one for the
 =C2=A0 STM32 ("if00") and one for the ARM ("if01").=C2=A0 Which looks li=
ke on=20
your system is mapped to /dev/ttyUSB0 and /dev/ttyUSB1.

Modern Linux systems (like latest Ubuntu) will automatically put your=20
ordinary user in group "dialout", and the rules for
 =C2=A0 serial ports will make the ports owned by group "dialout' so you=20
won't need root privileges to access them from "screen" or
 =C2=A0 "minicom" and the like.

> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, January 10, 2024 5:03 PM
> *To:* Jimenez, Samuel <sjimenez@curtisswright.com>;=20
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: E320 Full Enclosed Serial Console=20
> [EXTERNAL]
>
> *WARNING:*This message came from an external source. Please exercise=20
> caution and proper judgment when opening any attachments, clicking=20
> links or responding to this message.
>
> -----------------------------------------------------------------------=
-
>
> On 10/01/2024 16:56, Jimenez, Samuel wrote:
>
>     Hello and thank you for the prompt reply.
>
>     I see ttyUSB0 and ttyUSB1 but they are pointing to =E2=80=9CDigilen=
t=E2=80=9D
>     ports as shown below.
>
>     =E2=80=9C
>
>     ls -l
>     /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if0=
*
>
>     lrwxrwxrwx 1 root root 13 Jan 10 16:49
>     /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if0=
0-port0
>     -> ../../ttyUSB0
>
>     lrwxrwxrwx 1 root root 13 Jan 10 16:49
>     /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if0=
1-port0
>     -> ../../ttyUSB1
>
>     =E2=80=9C
>
>     I assume it should instead be something like
>     =E2=80=9Cusb-Silicon_Labs_CP2105_Dual_USB_to_UART=E2=80=A6=E2=80=9D=
 but not sure.
>
>     *Samuel Jimenez*
>
>     Software Dev Engineer, Sr.
>
>     *Curtiss-Wright*
>
>     20130 Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United
>     States
>
>     T: 703.840.6731
>
>     sjimenez@curtisswright.com | www.curtisswrightds.com
>     <https://urldefense.com/v3/__http:/www.curtisswrightds.com__;!!NVq9=
dfhzMyHqTw!mCxHirvZsFzwyB7q5T0vGwCSBG-oXCHuFvq1pMPcow5VM_EYZXx4GYUkOnhhcr=
AzWDkHmhcQV0IsnS4nB5pu-CpeVjC4$>
>
>
> See the documents here:
>
> https://kb.ettus.com/E320_Getting_Started_Guide#Setting_up_a_Serial_Con=
sole_Connection=20
> <https://urldefense.com/v3/__https:/kb.ettus.com/E320_Getting_Started_G=
uide*Setting_up_a_Serial_Console_Connection__;Iw!!NVq9dfhzMyHqTw!mCxHirvZ=
sFzwyB7q5T0vGwCSBG-oXCHuFvq1pMPcow5VM_EYZXx4GYUkOnhhcrAzWDkHmhcQV0IsnS4nB=
5pu-AEwwQG0$>
>
> What does:
>
> |ls -l /dev/serial/by-id|
>
> |Return?|
>
> -----------------------------------------------------------------------=
-
> This e-mail and any files transmitted with it are proprietary and=20
> intended solely for the use of the individual or entity to whom they=20
> are addressed. If you have reason to believe that you have received=20
> this e-mail in error, please notify the sender and destroy this e-mail=20
> and any attached files. Please note that any views or opinions=20
> presented in this e-mail are solely those of the author and do not=20
> necessarily represent those of the Curtiss-Wright Corporation or any=20
> of its subsidiaries. Documents attached hereto may contain technology=20
> subject to government export regulations. Recipient is solely=20
> responsible for ensuring that any re-export, transfer or disclosure of=20
> this information is in accordance with applicable government export=20
> regulations. The recipient should check this e-mail and any=20
> attachments for the presence of viruses. Curtiss-Wright Corporation=20
> and its subsidiaries accept no liability for any damage caused by any=20
> virus transmitted by this e-mail.
>
> For information about how we process personal data and monitor=20
> communications, please visit=20
> https://www.curtisswright.com/privacy-notice/default.aspx

--------------uM6jv0RX70TdxIlZm8UqkA0W
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/01/2024 17:05, Jimenez, Samuel
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:560add163b054e1b8454938d54cd3f55@curtisswright.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}code
	{mso-style-priority:99;
	font-family:"Courier New";}span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">This is what I have:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">$ ls -l /dev/serial/by-id/<o:p></o:p></p>
        <p class=3D"MsoNormal">total 0<o:p></o:p></p>
        <p class=3D"MsoNormal">lrwxrwxrwx 1 root root 13 Jan 10 16:49
          usb-Digilent_Digilent_USB_Device_2516351E882F-if00-port0 -&gt;
          ../../ttyUSB0<o:p></o:p></p>
        <p class=3D"MsoNormal">lrwxrwxrwx 1 root root 13 Jan 10 16:49
          usb-Digilent_Digilent_USB_Device_2516351E882F-if01-port0 -&gt;
          ../../ttyUSB1<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Samuel
                Jimenez</span></b><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black;mso-ligatur=
es:none"><o:p></o:p></span></b></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Software
              Dev Engineer, Sr.<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Curtiss-Wright<o:p></o:p></span></b></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">20130
              Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United
              States<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">T:
              703.840.6731
              <o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><a
                href=3D"mailto:sjimenez@curtisswright.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
sjimenez@curtisswright.com</a>
              |
              <a href=3D"www.curtisswrightds.com" moz-do-not-send=3D"true=
"
                class=3D"moz-txt-link-freetext">www.curtisswrightds.com</=
a></span></p>
        </div>
      </div>
    </blockquote>
    Hmm, I don't know then.=C2=A0 I don't have an E320 in my local stash =
of
    USRPs, so I'm going by the E310.<br>
    <br>
    The document for the serial interface for the E320 clearly indicates
    that there should be two serial ports--one for the<br>
    =C2=A0 STM32 ("if00") and one for the ARM ("if01").=C2=A0 Which looks=
 like on
    your system is mapped to /dev/ttyUSB0 and /dev/ttyUSB1.<br>
    <br>
    Modern Linux systems (like latest Ubuntu) will automatically put
    your ordinary user in group "dialout", and the rules for<br>
    =C2=A0 serial ports will make the ports owned by group "dialout' so y=
ou
    won't need root privileges to access them from "screen" or<br>
    =C2=A0 "minicom" and the like.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:560add163b054e1b8454938d54cd3f55@curtisswright.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><o:p></o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
            <p class=3D"MsoNormal"><b><span style=3D"mso-ligatures:none">=
From:</span></b><span
                style=3D"mso-ligatures:none"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Wednesday, January 10, 2024 5:03 PM<br>
                <b>To:</b> Jimenez, Samuel
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:sjimene=
z@curtisswright.com">&lt;sjimenez@curtisswright.com&gt;</a>;
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Re: E320 Full Enclosed
                Serial Console [EXTERNAL]<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><b><span style=3D"color:red">WARNING:</s=
pan></b><span
              style=3D"color:red"> This message came from an external
              source. Please exercise caution and proper judgment when
              opening any attachments, clicking links or responding to
              this message.</span><span style=3D"mso-ligatures:none"><o:p=
></o:p></span></p>
          <div class=3D"MsoNormal" style=3D"text-align:center"
            align=3D"center">
            <hr width=3D"100%" size=3D"2" align=3D"center">
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal">On 10/01/2024 16:56, Jimenez, Samuel
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hello and thank you for the prompt reply=
.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I see ttyUSB0 and ttyUSB1 but they are
            pointing to =E2=80=9CDigilent=E2=80=9D ports as shown below.
            <o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">=E2=80=9C<o:p></o:p></p>
          <p class=3D"MsoNormal">ls -l
            /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E88=
2F-if0*<o:p></o:p></p>
          <p class=3D"MsoNormal">lrwxrwxrwx 1 root root 13 Jan 10 16:49
/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if00-port=
0
            -&gt; ../../ttyUSB0<o:p></o:p></p>
          <p class=3D"MsoNormal">lrwxrwxrwx 1 root root 13 Jan 10 16:49
/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if01-port=
0
            -&gt; ../../ttyUSB1<o:p></o:p></p>
          <p class=3D"MsoNormal">=E2=80=9C<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I assume it should instead be something
            like =E2=80=9Cusb-Silicon_Labs_CP2105_Dual_USB_to_UART=E2=80=A6=
=E2=80=9D but not
            sure.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal"><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Samuel
                  Jimenez</span></b><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Software
                Dev Engineer, Sr.</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Curtiss-Wright</span></b><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">20130
                Lakeview Center Plaza, Suite 200, Ashburn, VA 20147
                United States</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">T:
                703.840.6731
              </span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><a
                  href=3D"mailto:sjimenez@curtisswright.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">sjimenez@curtisswright.com</a>
                |
                <a
href=3D"https://urldefense.com/v3/__http:/www.curtisswrightds.com__;!!NVq=
9dfhzMyHqTw!mCxHirvZsFzwyB7q5T0vGwCSBG-oXCHuFvq1pMPcow5VM_EYZXx4GYUkOnhhc=
rAzWDkHmhcQV0IsnS4nB5pu-CpeVjC4$"
                  moz-do-not-send=3D"true">
                  www.curtisswrightds.com</a></span><o:p></o:p></p>
          </div>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"mso-ligatures:none"><br>
            See the documents here:<br>
            <br>
            <a
href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/E320_Getting_Star=
ted_Guide*Setting_up_a_Serial_Console_Connection__;Iw!!NVq9dfhzMyHqTw!mCx=
HirvZsFzwyB7q5T0vGwCSBG-oXCHuFvq1pMPcow5VM_EYZXx4GYUkOnhhcrAzWDkHmhcQV0Is=
nS4nB5pu-AEwwQG0$"
              moz-do-not-send=3D"true">https://kb.ettus.com/E320_Getting_=
Started_Guide#Setting_up_a_Serial_Console_Connection</a><br>
            <br>
            What does:<br>
            <br>
          </span><code><span style=3D"font-size:10.0pt;mso-ligatures:none=
">ls
              -l /dev/serial/by-id</span></code><span
style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;mso-ligatur=
es:none"><br>
            <br>
          </span><code><span style=3D"font-size:18.0pt;mso-ligatures:none=
">Return?</span></code><span
style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;mso-ligatur=
es:none"><br>
            <br>
          </span><span style=3D"mso-ligatures:none"><o:p></o:p></span></p=
>
      </div>
      <hr>This e-mail and any files transmitted with it are proprietary
      and intended solely for the use of the individual or entity to
      whom they are addressed. If you have reason to believe that you
      have received this e-mail in error, please notify the sender and
      destroy this e-mail and any attached files. Please note that any
      views or opinions presented in this e-mail are solely those of the
      author and do not necessarily represent those of the
      Curtiss-Wright Corporation or any of its subsidiaries. Documents
      attached hereto may contain technology subject to government
      export regulations. Recipient is solely responsible for ensuring
      that any re-export, transfer or disclosure of this information is
      in accordance with applicable government export regulations. The
      recipient should check this e-mail and any attachments for the
      presence of viruses. Curtiss-Wright Corporation and its
      subsidiaries accept no liability for any damage caused by any
      virus transmitted by this e-mail.<br>
      <br>
      For information about how we process personal data and monitor
      communications, please visit
      <a class=3D"moz-txt-link-freetext" href=3D"https://www.curtisswrigh=
t.com/privacy-notice/default.aspx">https://www.curtisswright.com/privacy-=
notice/default.aspx</a><br>
    </blockquote>
    <br>
  </body>
</html>

--------------uM6jv0RX70TdxIlZm8UqkA0W--

--===============2199593364802340752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2199593364802340752==--
