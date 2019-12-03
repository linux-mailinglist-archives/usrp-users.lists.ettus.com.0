Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EEE10F3BC
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 01:01:53 +0100 (CET)
Received: from [::1] (port=56534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ibvdV-0007U3-GO; Mon, 02 Dec 2019 19:01:49 -0500
Received: from mail-il1-f177.google.com ([209.85.166.177]:36009)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ibvdS-0007Gk-6g
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 19:01:46 -0500
Received: by mail-il1-f177.google.com with SMTP id b15so1457545iln.3
 for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2019 16:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=JUD5SfKU1JMXcyHthR9cc+9k082nj/GzK/+XVh692YI=;
 b=tvTV68qdjSBX9QB3d2NQZ00pVIVjt/llJeFZU2Gz2fa2XF+faurHCjWsiV3VGjQDun
 PCX6bSBeqZZwthbV1qlKSqfrsGNm10pJBrRI4GCFIJYPy/kwRd+R9EV5tWNg4XFYSBqv
 RH4IcdZ57IH6+LqS9oYlCgKnzidlWLyYXVpkh5DZI17V542dUHCo5DUCRjDgnEwgfFe2
 s1ASVLuz2p5IsGyAO5ycSCTa/IVGASOeLR5/ZlcEcFXU4L3hLjy0q9xWSbzIgRLN1SvF
 OUJv3sAw+mzfEiTbd2ngxuhSlFiGwZLdNSddjsYPqLyH+Hf0P8g0u/RLIU9i4q2JH9LN
 wL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=JUD5SfKU1JMXcyHthR9cc+9k082nj/GzK/+XVh692YI=;
 b=KCdd7tM7juW9LQFoCApbP6JcQE0lFLBWmWR8YFIv1AvhCgiuVZ416NyThMNAaz8r1m
 P5cS/3A39dh43TQPAmy9VIlMfQFA8YehZrzOMv6qTpdGO9l4LAMjmfdhq9UrvOIJ1ycV
 Qu7cMbQAwNRcZPD6Ba+qnK86Nse2drTdcCThn/RkVDRUS+iWQb5ZrNMcc7OxpauHSCpi
 r4uebOSTC5vNj1N6HcnKsIf+fxBiq6g8GqQfDAGwNQWBn9jSbcpe1uC595dTDrqGRQq5
 NPuVfWCRPi5mY38K4sLELdqss36SJUkFUyEiuCLjLmyESlmzJroEGGb/xGFgwV6R3Mi2
 Mphw==
X-Gm-Message-State: APjAAAWIz0w6nRy7DfDN3bCrwHfsub23T+q1Ivdf+wKwpX/wcmA/YL2+
 Jz0qhDKkb1BHDtqgrMm/dZhBYmsQ
X-Google-Smtp-Source: APXvYqw8Sej3SE/hsMCo639jzwNvp9GT22DRoDQmVswQQmaM+48lRfVryxVbzvFkGUV5pA8hd8+Hbw==
X-Received: by 2002:a05:6e02:c09:: with SMTP id
 d9mr1907141ile.88.1575331265241; 
 Mon, 02 Dec 2019 16:01:05 -0800 (PST)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id h6sm250887iom.43.2019.12.02.16.01.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Dec 2019 16:01:04 -0800 (PST)
Message-ID: <5DE5A5BF.2090806@gmail.com>
Date: Mon, 02 Dec 2019 19:01:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BYAPR03MB36214F251A9766E8F9376E31D3790@BYAPR03MB3621.namprd03.prod.outlook.com>
 <CACSOXP2Kx_0hQzZN4c0Jx1mv44Guc77QDFfJa=ZPb4TCsc1wrA@mail.gmail.com>
In-Reply-To: <CACSOXP2Kx_0hQzZN4c0Jx1mv44Guc77QDFfJa=ZPb4TCsc1wrA@mail.gmail.com>
Subject: Re: [USRP-users] x300 systematic error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============7994232225874993857=="
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
--===============7994232225874993857==
Content-Type: multipart/alternative;
 boundary="------------030300070102080400070904"

This is a multi-part message in MIME format.
--------------030300070102080400070904
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2019 05:57 PM, Ettus Research Support via USRP-users wrote:
> Hi Lorenzo,
>
> What version of UHD are you using?
>
> Can you share your C++ app (either by emailing the mailing list or by 
> emailing it to support@ettus.com <mailto:support@ettus.com>)?
>
> Regards,
> Nate Temple
My guess is that *somebody* is running out of sockets -- either the 
host-side UHD library or the X3xx side.

How rapidly do you reset/re-start the streams?

For TCP sockets at least, there's a timer when the socket is closed that 
causes it to hang-around for a while in case more
   data arrives after the close handshake.  While the socket is in this 
state, it cannot be reused, so if you're rapidly creating
   and destroying objects that ultimately create a socket, you can run 
out of sockets.  Pure speculation on my part, and it
   may be something else entirely.


>
> On Wed, Nov 6, 2019 at 1:41 PM Minutolo, Lorenzo via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi All,
>     My C++ application has a loop which after creating the streamers,
>
>     send and receive some samples ->reset the streamers -> wait some
>     time -> repeat.
>
>     after exactly 83 iterations I get the error in the attached
>     screenshot.
>
>     If I restart the application everything works normally again
>
>     What is causing this? is there a workaround?
>
>
>     I'm using the USRP x300, core i9-990k CPU, intel x710 chip,
>     running ubuntu 18.04 LTS with boost 1.68 and the latest UHD
>     library (just coned).
>
>     The error is the same using all other UHD versions
>
>     Thanks,
>     Lorenzo
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030300070102080400070904
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/02/2019 05:57 PM, Ettus Research
      Support via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACSOXP2Kx_0hQzZN4c0Jx1mv44Guc77QDFfJa=ZPb4TCsc1wrA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Hi Lorenzo,<br>
          <br>
          What version of UHD are you using?<br>
          <br>
          Can you share your C++ app (either by emailing the mailing
          list or by emailing it to <a moz-do-not-send="true"
            href="mailto:support@ettus.com">support@ettus.com</a>)?<br>
          <br>
          Regards,<br>
          Nate Temple</div>
      </div>
    </blockquote>
    My guess is that *somebody* is running out of sockets -- either the
    host-side UHD library or the X3xx side.<br>
    <br>
    How rapidly do you reset/re-start the streams?<br>
    <br>
    For TCP sockets at least, there's a timer when the socket is closed
    that causes it to hang-around for a while in case more<br>
      data arrives after the close handshake.  While the socket is in
    this state, it cannot be reused, so if you're rapidly creating<br>
      and destroying objects that ultimately create a socket, you can
    run out of sockets.  Pure speculation on my part, and it<br>
      may be something else entirely.<br>
    <br>
    <br>
    <blockquote
cite="mid:CACSOXP2Kx_0hQzZN4c0Jx1mv44Guc77QDFfJa=ZPb4TCsc1wrA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Nov 6, 2019 at 1:41 PM
          Minutolo, Lorenzo via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Hi
              All,</div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">My
              C++ application has a loop which after creating the
              streamers, </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">send
              and receive some samples -&gt;<span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline"><span> </span>reset
                the streamers -&gt;</span> wait some time -&gt; repeat.</div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">after
              exactly 83 iterations I get the error in the attached
              screenshot.</div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">If
              I restart the application everything works normally again</div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What
              is causing this? is there a workaround?</div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline">I'm
                using the USRP x300, core i9-990k CPU, intel x710 chip,
                running ubuntu 18.04 LTS with boost 1.68 and the latest
                UHD library (just coned).</span><br>
            </div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline"><br>
              </span></div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline">The
                error is the same using all other UHD versions</span></div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline"><br>
              </span></div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline">Thanks,</span></div>
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><span
style="font-family:Calibri,Arial,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline">Lorenzo</span></div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
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
    <br>
  </body>
</html>

--------------030300070102080400070904--


--===============7994232225874993857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7994232225874993857==--

