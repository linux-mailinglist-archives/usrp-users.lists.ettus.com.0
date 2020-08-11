Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CA2241EBA
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 18:57:19 +0200 (CEST)
Received: from [::1] (port=51104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5XaO-0006e4-72; Tue, 11 Aug 2020 12:57:16 -0400
Received: from mail-qv1-f48.google.com ([209.85.219.48]:38709)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5XaK-0006XY-C3
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 12:57:12 -0400
Received: by mail-qv1-f48.google.com with SMTP id x7so6286314qvi.5
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 09:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ohZZVeLReWXVW7FPFnt6xF8jNbT36aLp/CgnqVhC2J0=;
 b=GOhoHSd/kkdKfG0BRa6YlE30J0FHLSKCMQMzod2ImwECTWYaLd92o8uiuv8cU4fRbu
 CghjQnSm6zsfcHuNWjJD3WihuMSmasAh1MsvZknEIVnXXctino2kw3oGYq8vqvxRAZZa
 gkFgkUI5CyCoRIngm7QytSNpFbAKBUCZjOLPuF8lisbceElZlU+WY4W2cSlGdcVTwAP5
 AYyhrutOAuinDL3rRMRyCstV/eVy2gVOSisNBVpbcLuMYjyGHRIDuYv4LYfw0TbODCjy
 s6uhcAVSPdUVsZTVsy62jE7khAWsXROMo7TU+vx3tIJ1DCOPUI+7LoLa2Ily27/usWWb
 ZczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ohZZVeLReWXVW7FPFnt6xF8jNbT36aLp/CgnqVhC2J0=;
 b=be8nCEmhR0589Tqz9FHsM9DqAnJRiLMkLRWkwFIDtR0bSD6V3v0vvHVN8X9iYDbX3J
 ae6y1HQ1ADDt/roBzwt/Lt0smhX+owY4Iw+qlBfGbaf8vt7UNh+gTd5NeXSGT8uarkG5
 CYpiOzAvBIjjkbic4Z13aY/yGETqDz9SkyVJpLMvQfsZiBhnHA+F5Ba1w0hCS3NogkyN
 fU3GFCc4kuvXXv385LHYJcoWf/Bs5FALbpWVx++czgHBG7eYwbS78UILbGot9Tz5S+nh
 lF4ETJZisgOeYf5wuI2SIXgEmDnDmXkiqNQk46sccE3reLpzwaWJbbsmsivnOY0+zvlS
 w8IQ==
X-Gm-Message-State: AOAM533/+bHRPMUfDB4Mq3LqlhzbhfpHpLj74ADhJnxLUyQGhA7GWt/F
 IGSK8UC0wP7Xa9Y1rpwKoT2aPRMIOJo=
X-Google-Smtp-Source: ABdhPJxCx1RmAA/Yit4Vej40G08P7D0WjgL5/zRKlCK+N6j7TnIu25fcxHpN/MI0Q8X3zmYEEsUpNg==
X-Received: by 2002:ad4:49b4:: with SMTP id u20mr2278864qvx.73.1597164991597; 
 Tue, 11 Aug 2020 09:56:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x3sm17953618qkx.3.2020.08.11.09.56.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Aug 2020 09:56:31 -0700 (PDT)
Message-ID: <5F32CDBC.9040207@gmail.com>
Date: Tue, 11 Aug 2020 12:56:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MA1PR01MB2588785E0EFDCBE8DB4228A490450@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588785E0EFDCBE8DB4228A490450@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] LO sharing
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============8344960916619099586=="
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

This is a multi-part message in MIME format.
--===============8344960916619099586==
Content-Type: multipart/alternative;
 boundary="------------060207020506070504080006"

This is a multi-part message in MIME format.
--------------060207020506070504080006
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/11/2020 08:34 AM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> What software commands are needed for LO sharing in usrp 2955 to make 
> all channels phase aligned? At hardware level I can see the crisscross 
> connections inside the box in the following link figure 2:
>
> https://kb.ettus.com/Direction_Finding_with_the_USRP™_X-Series_and_TwinRX™ 
> <https://kb.ettus.com/Direction_Finding_with_the_USRP%99_X-Series_and_TwinRX%99>
>
>
> but what on the software side?
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
There is some information here:

https://kb.ettus.com/TwinRX#New_Multi_USRP_Functions

Also an app-note on gr-doa, which uses TwinRx, and the software takes 
advantage of LO sharing

https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2

The API manual entry for set_rx_lo_source:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a865f1e3d08802842a73e1f0571110335

Also, the twinrx_freq_hopping  example code uses the LO sharing 
functionality.



--------------060207020506070504080006
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/11/2020 08:34 AM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB2588785E0EFDCBE8DB4228A490450@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Hi,</div>
          <div dir="ltr"><br>
          </div>
          <div>What software commands are needed for LO sharing in usrp
            2955 to make all channels phase aligned? At hardware level I
            can see the crisscross connections inside the box in the
            following link figure 2: </div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr"><a moz-do-not-send="true"
href="https://kb.ettus.com/Direction_Finding_with_the_USRP%99_X-Series_and_TwinRX%99">https://kb.ettus.com/Direction_Finding_with_the_USRP™_X-Series_and_TwinRX™</a><br>
          </div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr"><br>
          </div>
          <div>but what on the software side?</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">Regards,</div>
          <div dir="ltr">Koyel </div>
          <div><br>
          </div>
          <div class="ms-outlook-ios-signature"
            id="ms-outlook-mobile-signature">Get <a
              moz-do-not-send="true" href="https://aka.ms/o0ukef">
              Outlook for iOS</a></div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    There is some information here:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://kb.ettus.com/TwinRX#New_Multi_USRP_Functions">https://kb.ettus.com/TwinRX#New_Multi_USRP_Functions</a><br>
    <br>
    Also an app-note on gr-doa, which uses TwinRx, and the software
    takes advantage of LO sharing<br>
    <br>
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2">https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2</a><br>
    <br>
    The API manual entry for set_rx_lo_source:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a865f1e3d08802842a73e1f0571110335">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a865f1e3d08802842a73e1f0571110335</a><br>
    <br>
    Also, the twinrx_freq_hopping  example code uses the LO sharing
    functionality.<br>
    <br>
    <br>
  </body>
</html>

--------------060207020506070504080006--


--===============8344960916619099586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8344960916619099586==--

