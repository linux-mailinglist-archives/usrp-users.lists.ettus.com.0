Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 691532451BF
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 20:56:25 +0200 (CEST)
Received: from [::1] (port=37304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k71Lq-0003uJ-SY; Sat, 15 Aug 2020 14:56:22 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:43570)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k71Ln-0003ny-CX
 for usrp-users@lists.ettus.com; Sat, 15 Aug 2020 14:56:19 -0400
Received: by mail-qk1-f180.google.com with SMTP id 2so11378204qkf.10
 for <usrp-users@lists.ettus.com>; Sat, 15 Aug 2020 11:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=lt7XKvkMy3JBoWL3/Q78Cg4pwx87NEfoOKK3y8/xpC4=;
 b=WW5jDgv27y7C7YKovYxWmnYo4Lz/pepFY4c80CpzdDzP48vUwI8WqQUEFlshfI6/6g
 M+fFGiExZFQSl4SDQpXs9Nh8WuESt3h7TJGzmHBPrkp6qjmFH/SpmcLt+csaULQRRnYr
 i7RbqmUZNQZGQ51wYw3Io3xIMi9gFscrIISj22YnbKPM9OLVUk6vxNda3NYx72zgwlyb
 KaqEeCs6cvWqz6e4qjZqIwBk/1Ka4DmKyiWlg4VhhE/N95Oo3/qkBeadTDSr6L14D+XP
 AG9wBHTsyJTR9EQGtjObzGPF7UXN+LTjyUcPW+Phk9GjswoT/4A1cB5iQpsmWJDn+0zd
 St2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=lt7XKvkMy3JBoWL3/Q78Cg4pwx87NEfoOKK3y8/xpC4=;
 b=VvNhrs7OzVCgX40m8HNsCXiyE+oUT4aeP7RSkxRIG53jLx346MGNQoTRxCqyCTe5Xq
 vt/ZxUdAYSF1p7Mnh+dRphXezjHzmXs1OE0BZxBZAlSnzjSJy5R1+IpjTMMM5ppmlz9V
 Epv8OXICI9AbD5joyH7dcdujeuibUqQRlT5A1xoaHa5PE0BYqkPGvMgujkg9dj173GTl
 3CLhUlHDxdaSig27cBZrd/Qsufz92Yxx5/558GYc3GnwOgTmPEuH2Tcti7Jch6Zi9+t9
 m3jel/HE92y21g1UYhHDw/TlgGvcR987g25U61j2uwQOUnbZsgFkYxfhA+wOPL5mjbVZ
 MzRg==
X-Gm-Message-State: AOAM532nulOqgyWFfeDoqhKUPjKgjELAJRsghBKNEHFGum8Klv1vtSOa
 LFU9ga8enJvAcB+Q1nCPOaNkDsYNcKFjVg==
X-Google-Smtp-Source: ABdhPJw0WOtcVNAQLVaG2Zy9HbsQkMAZZoYhDvMri37bu+MKjTt+AYBMqeeGoBzZUHVWUAROXyVXXw==
X-Received: by 2002:a37:62cc:: with SMTP id w195mr7043853qkb.33.1597517738501; 
 Sat, 15 Aug 2020 11:55:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id r6sm12075708qkc.43.2020.08.15.11.55.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Aug 2020 11:55:38 -0700 (PDT)
Message-ID: <5F382FA9.60900@gmail.com>
Date: Sat, 15 Aug 2020 14:55:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Incorrect data from usrp 2955
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
Content-Type: multipart/mixed; boundary="===============1167350847590286504=="
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
--===============1167350847590286504==
Content-Type: multipart/alternative;
 boundary="------------050707010804000306010709"

This is a multi-part message in MIME format.
--------------050707010804000306010709
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> We are using USRP 2955. Something has gone wrong. Before we were 
> getting constant phase difference across channels for limited 
> bandwidth and with time when we split single antenna signal using 
> splitter and fed two channels of USRP but now it is not doing so. This 
> happened on Friday that after getting a series of correct results : 
> constant phase difference across channels by feeding signal using 
> splitter as mentioned above, we suddenly started to receive wrong 
> data: random phase  across channels and with time using the same setup 
> with splitter. The thing we did was setting gain to near maximum and 
> receiving 100 MHz sample rate. But I don't think amplifier has damaged 
> because in this usrp we have four independent channels and when we 
> connected the splitter to unused channels then also we got wrong data. 
> What can go wrong that USRP is streaming data but phases are wrong? 
> What do you think? Please let me know.
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
Does it look better again when you reduce the gain?

What is the magnitude of the signals going to the RX ports?



--------------050707010804000306010709
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div><span>Hi,<br>
            </span>
            <div dir="ltr"><br>
            </div>
            <span>We are using USRP 2955. Something has gone wrong.
              Before we were getting constant phase difference across
              channels for limited bandwidth and with time when we split
              single antenna signal using splitter and fed two channels
              of USRP but now it is not doing so. This happened on
              Friday that after getting a series of correct results :
              constant phase difference across channels by feeding
              signal using splitter as mentioned above, we suddenly
              started to receive wrong data: random phase  across
              channels and with time using the same setup with
              splitter. The thing we did was setting gain to near
              maximum and receiving 100 MHz sample rate. But I don't
              think amplifier has damaged because in this usrp we have
              four independent channels and when we connected the
              splitter to unused channels then also we got wrong data.
              What can go wrong that USRP is streaming data but phases
              are wrong? What do you think? Please let me know.</span><br>
          </div>
          <div dir="ltr"><span><br>
            </span></div>
          <div dir="ltr"><span>Regards,</span></div>
          <div dir="ltr"><span>Koyel </span></div>
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
    Does it look better again when you reduce the gain?<br>
    <br>
    What is the magnitude of the signals going to the RX ports?<br>
    <br>
    <br>
  </body>
</html>

--------------050707010804000306010709--


--===============1167350847590286504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1167350847590286504==--

