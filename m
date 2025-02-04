Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EA9A27840
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 18:25:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7A65385BD3
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 12:25:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738689921; bh=tg/S7WpUtGc7R49OUM4jFHPrfLw3vOGcbV/I3bWZIis=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AcFsuHSwKai/etIkCcuHSOhcJ3FRcc6ci5pmwikkf5PIwIWen1TC3KSJJOYxCBhXf
	 bG4+gDC8+if9nDsAg/NBlhyAhPZeseK247lazqs39kRliV8jqaf3trNG4Gi5fNeWxI
	 tDw9LcXfgksk1LV92MmsbgtGst2pFVOxVtTJRhClz3HHl7uIjMU/UevhziKtl90Ihg
	 Hhk16ZtBO6h4ap2iKilRSv+DZpoysZIM8coqDW2D1DaOASyZ+eljlfZSkx/7p32qhp
	 ZL8QtIEMmWQOLgvdi3Y0TZ4jBYWHUTJyQ+FvZn/KLZ99jocauP0xdKIO/1EaPYUzSW
	 AX5LGZ4ssLh0A==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8CBB9385AEA
	for <usrp-users@lists.ettus.com>; Tue,  4 Feb 2025 12:25:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gxmgIkm2";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6e4242b0b96so11407426d6.1
        for <usrp-users@lists.ettus.com>; Tue, 04 Feb 2025 09:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738689907; x=1739294707; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xrigCgLt9FHskoa7rxhsU43u+/iz5uwhueFTD/aprgE=;
        b=gxmgIkm2TKHkn9qoLzcDJPg5lQ08nQv9/j20w9fppnp+aOsRBkE3jE68/crqb8YrR4
         AVYeZx29tvwg2ZiDUdkHQbjSkfeLDS7G0oy+MxIZ2JYbJJaHoMyQ3dBeZAefYk8pooaX
         tNRZDEYOm0FC5v8R/hIXw57X54K3fRGFfZ/v2NzIYivERTTdFQLo43aoUJhEHJg6N0wP
         OgeIHI78uvRrDz2J6TbMMxlMp7fIIvGe9h747EJl/s/zXYsFDZCkjvn0W5Hvwx86sWyN
         AaGrz9RnfMb/p8v8S8CVmnNhcM4BtBKylj8USFOsb471sFWynuI9607b31dVHZbKKT3g
         x+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738689907; x=1739294707;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xrigCgLt9FHskoa7rxhsU43u+/iz5uwhueFTD/aprgE=;
        b=o/h6OPFFxethf9cZ1T+VMg/BzmEmeMeD9g0L0Rb+Y39aEvb+GPbImzD2zXaM5EaUXZ
         jpUuyXU3mmCRn12oRa3PFQxgY7EkzIpMW6nvS+GWFtxqP8WX5a/oWHOdWUBC9/14CMB4
         jmzBMiTK6v/Oeg73JTTNYs/X1QWIArLNRzEdTNJCwCdfSxw0rypPZNhsrAEWFavK9cF5
         6CFm0CEVhblWTjz7m/tdFAqtDD8jIjzA5C843vf/muirhnySaNLAF4BwhBd3sISe2RY+
         TF+cNXpiWC7FZSOeHT/NJQyil8hdbYa9MSFWNh9a7P0FDi6i+B5itmzpPhokM2FswheK
         1ftQ==
X-Gm-Message-State: AOJu0YwjcbLzYnxU59X/bW8EHaeyEzDLKmHEwvsOyY5+yjfB8QWhgNqd
	anaItcFUxFG59SUYqdB8uWNAYPIFAV3Pv58Ng4c/QQ3KVUlkoAG3/L8wEQ==
X-Gm-Gg: ASbGncvq7sW9LxX+upQ68G14tNka9um72wRbzd0+eRCVBIJlOx71BpSrKdcS7nbX7W+
	OyiTX8OrZJiOw9M6GnbdP3alYxdbymFqd8RJlPYXF0MrzQwcp2T5WN1XpIKFMaTNryETn5ukfB8
	gc4MVCN8UoDMZMLaQAHEK9gYNB8nBorr1OXHHtmVpuMEkYySrbanrq5grTFmsWroEbBlYxnxRdU
	TY6brdE+cpxr/zmJ1SO5kteAeSQWZIA0T8rE48N4DgddVAQgJ6H4KNSLSzpj3T/tPZwStY6EAZR
	EwlZAvw/yEtJbxr58ejSVn/aaLfSyl+12uc2qOx1a8Uj3OjhNYTb1BGcsjFdgL0gfG40IGbQnll
	uInCo2EveXqrGKw==
X-Google-Smtp-Source: AGHT+IGkMxytW3ZEdIypPsv/bVkOXKThqTTlo+qDPv9lnEV0tt4x+cRCjSdf9JZzc8XZyWi+4dQK2Q==
X-Received: by 2002:a05:6214:27c5:b0:6d8:812e:1fd0 with SMTP id 6a1803df08f44-6e243bb85dbmr380329316d6.15.1738689907359;
        Tue, 04 Feb 2025 09:25:07 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e2548357f9sm64135936d6.63.2025.02.04.09.25.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2025 09:25:06 -0800 (PST)
Message-ID: <3b7ce72d-7ed3-4438-abac-7c9a0cc95314@gmail.com>
Date: Tue, 4 Feb 2025 12:25:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY@lists.ettus.com>
 <dd45cd7de2cd4ba69b9525cb6bb0c689@hhi.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dd45cd7de2cd4ba69b9525cb6bb0c689@hhi.fraunhofer.de>
Message-ID-Hash: RRMDPT5WUFFCMVQUC2Q4AX45V6PNLJRG
X-Message-ID-Hash: RRMDPT5WUFFCMVQUC2Q4AX45V6PNLJRG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 not seen by uhd_find_devices command
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRMDPT5WUFFCMVQUC2Q4AX45V6PNLJRG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8301050778156048003=="

This is a multi-part message in MIME format.
--===============8301050778156048003==
Content-Type: multipart/alternative;
 boundary="------------mEuIP8YzWT2bIrV9076tjyOy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mEuIP8YzWT2bIrV9076tjyOy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/02/2025 11:14, Mehlhose, Matthias wrote:
> Hi,
>
> Any first run of a UHD application will upload the B210 firmware!
Actually, any time the device is powered-off.


>
> The B210 should be identified as "2500:0020 Ettus Research LLC USRP=20
> B210" from "lsusb" after the firmware upload via the Cypress=20
> WestBridge USB data transfer is done.
>
> ----
>
> There is a high possibility that the firmware image for the B210 is=20
> not loaded or could not be loaded onto your device.
>
> Please check the firmware folder by running:
>
> "ls /usr/local/share/uhd/images"
>
> (Note: The path may differ on your system.) If the firmware folder is=20
> empty, please run the command:
>
> "sudo uhd_images_downloader"
>
> at least once before using any UHD commands, such as "sudo=20
> uhd_find_devices", "sudo uhd_usrp_probe", or your UHD application.
>
>
> Best regards,
> Matthias
> -----------------------------------------------------------------------=
-
> *Von:* pigatoimdeafrancesco@gmail.com <pigatoimdeafrancesco@gmail.com>
> *Gesendet:* Dienstag, 4. Februar 2025 15:45:07
> *An:* usrp-users@lists.ettus.com
> *Betreff:* [USRP-users] Re: B210 not seen by uhd_find_devices command
>
> Hello Marcus,
>
> the output of =E2=80=9Clsusb=E2=80=9C is:
>
> Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>
> Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>
> Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>
> Bus 005 Device 002: ID 2500:0020 Cypress WestBridge
>
> Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>
> Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>
> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>
> Bus 001 Device 008: ID 0b1f:03ee Insyde Software Corp.
>
> Bus 001 Device 007: ID 0557:9241 ATEN International Co., Ltd
>
> Bus 001 Device 006: ID 1d6b:0107 Linux Foundation USB Virtual Hub
>
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>
>
> where the B210 is identified as Cypress WestBridge.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------mEuIP8YzWT2bIrV9076tjyOy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/02/2025 11:14, Mehlhose, Matthia=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:dd45cd7de2cd4ba69b9525cb6bb0c689@hhi.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <div class=3D"markdown-content">
          <div
style=3D"font-size: 16px; font-weight: 400; line-height: 22px; white-spac=
e: normal; margin: 0.8em 0px;">
          </div>
        </div>
        <div>Hi,</div>
        <div><br>
        </div>
        <div><span>Any first run of a UHD application will upload the
            B210 firmware!</span></div>
      </div>
    </blockquote>
    Actually, any time the device is powered-off.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:dd45cd7de2cd4ba69b9525cb6bb0c689@hhi.fraunhofer.de">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <div><span><br>
          </span></div>
        <div><span>The B210 should be identified as "2500:0020 Ettus
            Research LLC USRP B210" from "lsusb" after the firmware
            upload via the Cypress WestBridge USB data transfer is done.<=
/span></div>
        <div><br>
        </div>
        <div>----<br>
        </div>
        <div><br>
        </div>
        <div>There is a high possibility that the firmware image for the
          B210 is not loaded or could not be loaded onto your device.
          <br>
          <br>
          Please check the firmware folder by running:<br>
          <br>
          "ls /usr/local/share/uhd/images"<br>
          <br>
          (Note: The path may differ on your system.) If the firmware
          folder is empty, please run the command:<br>
          <br>
          "sudo uhd_images_downloader"<br>
          <br>
          at least once before using any UHD commands, such as "sudo
          uhd_find_devices", "sudo uhd_usrp_probe", or your UHD
          application.<br>
        </div>
        <div><br>
        </div>
        <div><br>
          Best regards, =C2=A0<br>
          Matthias<br>
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b>
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:pigatoimde=
afrancesco@gmail.com">pigatoimdeafrancesco@gmail.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:pigatoimdeafr=
ancesco@gmail.com">&lt;pigatoimdeafrancesco@gmail.com&gt;</a><br>
          <b>Gesendet:</b> Dienstag, 4. Februar 2025 15:45:07<br>
          <b>An:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Betreff:</b> [USRP-users] Re: B210 not seen by
          uhd_find_devices command</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <p>Hello Marcus, </p>
        <p>the output of =E2=80=9Clsusb=E2=80=9C is: </p>
        <p>Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
          hub</p>
        <p>Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
          hub</p>
        <p>Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
          hub</p>
        <p>Bus 005 Device 002: ID 2500:0020 Cypress WestBridge</p>
        <p>Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
          hub</p>
        <p>Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
          hub</p>
        <p>Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
          hub</p>
        <p>Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
          hub</p>
        <p>Bus 001 Device 008: ID 0b1f:03ee Insyde Software Corp.</p>
        <p>Bus 001 Device 007: ID 0557:9241 ATEN International Co., Ltd</=
p>
        <p>Bus 001 Device 006: ID 1d6b:0107 Linux Foundation USB Virtual
          Hub</p>
        <p>Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
          hub</p>
        <p><br>
        </p>
        <p>where the B210 is identified as Cypress WestBridge. </p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------mEuIP8YzWT2bIrV9076tjyOy--

--===============8301050778156048003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8301050778156048003==--
