Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 503AC2F4D75
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 15:46:19 +0100 (CET)
Received: from [::1] (port=50736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzhPb-0004D8-Le; Wed, 13 Jan 2021 09:46:15 -0500
Received: from mail-io1-f41.google.com ([209.85.166.41]:41550)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kzhPX-000486-KB
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 09:46:11 -0500
Received: by mail-io1-f41.google.com with SMTP id q1so4542785ion.8
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 06:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=X/D4Uzbk9NmPBfFKSMVFFSHdqmkKULG9drGimDxCRFA=;
 b=TSUpzYnzI2ud6R9is4cOq3y4IrObF7lIaSSYRMIYQa6YuPG5K8OuKzQMiXvIJk0nHS
 +jlL2c0kJQyLH3uvXx1Ci1JQVAc2A+n8n8Ryv4hd3QEKE2p5elgkriZP255z0G+eOCqL
 IvseFNUOrQ/k1aHn2GC3m8TtKNp7tOlnD8gbCYXfXX3Ga0eeI1Tk1zlhZBOLQjLy4aab
 foYleROAAKeecyyK6Xt2BNYVhLndSvAxyzl4wofPvgyI/x33oWfKtd8tukwlZH+5bMLw
 hq4QNELLQjF6HTczdaKA4SyXF9EcMcyE17DPChhC2e7YEuP26m1O32yvmxzhRb/mdglD
 kLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=X/D4Uzbk9NmPBfFKSMVFFSHdqmkKULG9drGimDxCRFA=;
 b=D9Zif6ajHWLa8wlbGRZU/fInrJmQb04Atu7pjUUC1L6SObNjGuZFrNGtGg6a2TISek
 4xQSYsJck7F7FO53t3lm0vRXV3PlNHadDE7KW8HoPDxcqLt/7l/00DA6/UwjpV9ydia/
 h0ntnV9rMkBLzB/3ErgsSO+4l2yWICCxOlLLVBOES2YQbQCncBlfdQVLezpDuTsD6S4o
 EWOEld4ILU1pZoQLT2lDn2gQD5BrcgLFQ7krWHuKmWEf1VLDlfuA+4EBpIo8Z2XEqeRp
 RA8dMOXRUKp4qn7Qiqq2mitMtyZ5mSSM1+IoosHsKYWyZihJ7NpVZ/csxuXyMVEPCP19
 +hTA==
X-Gm-Message-State: AOAM5303p77eSDbIEu0EvSvM/3cTC3UTrAO6q19SnsTfLjnY0081IN15
 jPl/w2Hw9EY7lBEQhst8CwoJ2GOYvT8=
X-Google-Smtp-Source: ABdhPJwNQR/STNNN/F7JZv9soytfyB33NkNLIM+s5cRH77ajViqWs+UeIXNXtRzQSdYsHAY92mrHJg==
X-Received: by 2002:a05:6e02:20ee:: with SMTP id
 q14mr2527160ilv.259.1610549130544; 
 Wed, 13 Jan 2021 06:45:30 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id g5sm1595602ild.25.2021.01.13.06.45.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Jan 2021 06:45:30 -0800 (PST)
Message-ID: <5FFF077E.9040704@gmail.com>
Date: Wed, 13 Jan 2021 09:45:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] USRP sample rate and bandwidth
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
Content-Type: multipart/mixed; boundary="===============5965571257306869915=="
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
--===============5965571257306869915==
Content-Type: multipart/alternative;
 boundary="------------010102030707080607040406"

This is a multi-part message in MIME format.
--------------010102030707080607040406
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/13/2021 01:08 AM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> The USRP sample rate and bandwidth are two different parameters in 
> gnuradio so if I want 20 MHz bandwidth and 100 MSps sample rate then 
> will setting bandwidth = 20 MHz and sample rate = 100 MHz serve my 
> purpose? Normally sample rate (100 MHz in this case) is the bandwidth 
> unless filter is used so does that mean USRP is filtering out 20 MHz 
> keeping sample rate at 100 MHz by itself?
>
> Regards,
>
> Koyel Das
> Senior – Product Engineer
>
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: 
> www.vehere.com <http://www.vehere.com/>//
Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the 
analog filter bandwidth ahead of the ADC.

Many hardware configurations, however, have fixed analog bandwidth ahead 
of the ADC, and this parameter setting will do
   nothing in those situations.

Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x) 
has this control, as do some of the older
   daughtercards--DBSRX2, TVRX2.



--------------010102030707080607040406
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/13/2021 01:08 AM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        The USRP sample rate and bandwidth are two different parameters
        in gnuradio so if I want 20 MHz bandwidth and 100 MSps sample
        rate then will setting bandwidth = 20 MHz and sample rate = 100
        MHz serve my purpose? Normally sample rate (100 MHz in this
        case) is the bandwidth unless filter is used so does that mean
        USRP is filtering out 20 MHz keeping sample rate at 100 MHz by
        itself?</div>
      <div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          Regards,</div>
        <div id="Signature">
          <div>
            <meta content="text/html; charset=UTF-8">
            <div id="divtagdefaultwrapper" dir="ltr"
              style="font-size:12pt; color:#000000;
              font-family:Calibri,Helvetica,sans-serif">
              <p style="margin-top: 0px; margin-bottom:
                0px;font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple
                Color Emoji&quot;,&quot;Segoe UI
                Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
                Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;
                font-size:16px; line-height:16px">
                <font face="Tahoma,serif"><font style="font-size:9pt">Koyel
                    Das                                     <br>
                    Senior – Product Engineer</font></font></p>
              <font style="font-size:16px" face="Tahoma,serif"><font
                  style="font-size:9pt">Vehere | Proactive
                  Communications Intelligence &amp; Cyber Defence</font></font><font
                style="font-size:16px" face="Tahoma,serif"><font
                  style="font-size:9pt"><br>
                  M: +919051132173 | </font></font><font
                style="font-size:16px" face="Tahoma,serif"><font
                  style="font-size:9pt">T: +91 33 40545454 | F: +91 33
                  40545455 | W: <a moz-do-not-send="true"
                    href="http://www.vehere.com/" target="_blank"
                    rel="noopener noreferrer" id="LPNoLP">www.vehere.com</a></font></font><font
                style="font-size:16px" face="Tahoma,serif"><font
                  style="font-size:9pt"><i></i></font></font><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets
    the analog filter bandwidth ahead of the ADC.<br>
    <br>
    Many hardware configurations, however, have fixed analog bandwidth
    ahead of the ADC, and this parameter setting will do<br>
      nothing in those situations.<br>
    <br>
    Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP
    E31x) has this control, as do some of the older<br>
      daughtercards--DBSRX2, TVRX2.<br>
    <br>
    <br>
  </body>
</html>

--------------010102030707080607040406--


--===============5965571257306869915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5965571257306869915==--

