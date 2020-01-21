Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E946144360
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 18:36:22 +0100 (CET)
Received: from [::1] (port=36882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itxRt-00061g-HU; Tue, 21 Jan 2020 12:36:21 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:45833)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1itxRq-0005uH-8w
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 12:36:18 -0500
Received: by mail-qk1-f172.google.com with SMTP id x1so3496656qkl.12
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 09:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=uNV6aDdJzxDsQki7hA9IH9gM05uWjtoMKMlQ5FhWAe4=;
 b=hOWnQOpLbQMm4knLJbGrcXV/e7NzIqRwDJxQP7LcMtUYEEHaY1LtPNQ7rOh/a0vKJl
 6hYI3MrCYIM6UTm0pJJDZe6PzF4DZvkhaSe47Bg56S/3od4aJWPcDm7q0nNAUtrY/sr1
 vl5/lkIaun1V1fH8b6U1AHBzN3Jceyxn5OCsqIlrW4B9LLLrfhj7QBd5eDyjkXsMPtQG
 ONBT2C3n5GGuGwwCsCfHB7Mu08jem1/J2LvzGgmKCsE63BqlbebZikgfMZ3YyxDjzNaf
 TPqWuQxYWSfO1TUsd75RFvQZreVXnY5mtE3uRZVDVXEOF47JVS1JjnLLZH2I8oXotKow
 s23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=uNV6aDdJzxDsQki7hA9IH9gM05uWjtoMKMlQ5FhWAe4=;
 b=Vh7iSQTmukwKY2z03LngwVHVYZSDplZUjNxLnIvIHqgMw8tmqyClGypO1wVmAH7tjN
 xsAGuyscVj/Xi3P1eWT7zhJRziXIL/Q9DznlkMiTg6WTvhwAb2yUPYDN4wVV4VicMFdg
 KRfLEvKKASc5otK47rWpJGI+QBSeAi1TRKql16R3/l0V/qHea6OUJue7TgzA9vfVmVdQ
 VD0hr5aOiHt82LtK+LkUipM9HQTosaNwrw7e1z8NOC9TIThIZnn1+HXAwKjBTQTNi+JR
 4qtRt82wygfnJQrk1dSnDVQKAeMFzmasMLdxyCYOHSRRD4YrSlJToX3lKJB5VnjDMFEp
 STrw==
X-Gm-Message-State: APjAAAXKFVoMC5yf4VWCBLu6A0F0S3SteckGqBeGblu0IQUqljWkcB6t
 QoN8L9qB1VF1/mZDnHO91e0SLqvF+KM=
X-Google-Smtp-Source: APXvYqxTFnW/1DPx6A3E/j8oOXWpG7sEInhLMhKMQ8dlBwm9KAu/GsbVX7/I4g7MQENFgNvWGgASew==
X-Received: by 2002:ae9:ea08:: with SMTP id f8mr5292197qkg.489.1579628137522; 
 Tue, 21 Jan 2020 09:35:37 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83]) by smtp.googlemail.com with ESMTPSA id
 206sm17597622qkf.132.2020.01.21.09.35.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jan 2020 09:35:36 -0800 (PST)
Message-ID: <5E273668.5030807@gmail.com>
Date: Tue, 21 Jan 2020 12:35:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAByKQJ6oU=TSUeptf9wr=LoHehLN_AFEW_bejWTz3JTsp2=8LA@mail.gmail.com>
 <CAGNhwTPb0ODqnmqsRWgWLy9AovSyM13gT1K+iFYHaQsbs5VPkA@mail.gmail.com>
In-Reply-To: <CAGNhwTPb0ODqnmqsRWgWLy9AovSyM13gT1K+iFYHaQsbs5VPkA@mail.gmail.com>
Subject: Re: [USRP-users] ettus usrp B200 driver - not working on linux
 ubuntu
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
Content-Type: multipart/mixed; boundary="===============4399733803814715053=="
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
--===============4399733803814715053==
Content-Type: multipart/alternative;
 boundary="------------030208000200050503090304"

This is a multi-part message in MIME format.
--------------030208000200050503090304
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/21/2020 11:50 AM, Michael Dickens via USRP-users wrote:
> Hi Paweł - I'd recommend using these install instructions < 
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux 
> <https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux> >. 
> Please note specifically the section for "Configuring USB". It sounds 
> like you've done most of the work already; just a couple parts that 
> might be additions or different to be finalized. Hope this is useful! 
> - MLD
I'll also point out that USB over a VM has always been a pain, not just 
for USRPs.

We don't really recommend that you run the Ettus USB type radios through 
a VM, because USB support in VMs is flaky and under-performing
   in general.


>
> On Tue, Jan 21, 2020 at 11:33 AM Paweł Gocyla via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hello,
>
>     I have a problem with ettus usrp B200 on linux ubuntu.
>
>     I have made all steps regarding UHD and driver installation with
>     this tutorial:
>     https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z0000015BIZSA2&l=pl-PL
>
>     I turned on support for usb 3.0 in vmware settings.
>     I installed intel drivers for support of usb 3.0 (on windows host)
>     -> after that vmware was finding this device as B200 for a while
>     but after host windows restart is identifying this device as
>     before as WestBridge. In ubuntu I have warning from vmware
>     workstation that there is a driver error.
>
>     In windows host this device is properly identyfied as Ettus
>     Research LLC B20/B210. On ubuntu I installed driver via apt -
>     libuhd3.15.0.
>
>     uhd_usrp_probe and uhd_find_devices can't find any usrp devices.
>
>     lsusb also doesn't recognise this usrp B200 device.
>
>
>     I was searching in google for more information but I don't have
>     any ideas how to fix it and what is wrong.
>
>     Thanks in advance for your help !
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> -- 
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com <mailto:support@ettus.com>
> Web: https://ettus.com/
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030208000200050503090304
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/21/2020 11:50 AM, Michael Dickens
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAGNhwTPb0ODqnmqsRWgWLy9AovSyM13gT1K+iFYHaQsbs5VPkA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Paweł - I'd recommend using these install
        instructions &lt; <a moz-do-not-send="true"
href="https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a> &gt;.
        Please note specifically the section for "Configuring USB". It
        sounds like you've done most of the work already; just a couple
        parts that might be additions or different to be finalized. Hope
        this is useful! - MLD<br>
      </div>
    </blockquote>
    I'll also point out that USB over a VM has always been a pain, not
    just for USRPs.  <br>
    <br>
    We don't really recommend that you run the Ettus USB type radios
    through a VM, because USB support in VMs is flaky and
    under-performing<br>
      in general.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAGNhwTPb0ODqnmqsRWgWLy9AovSyM13gT1K+iFYHaQsbs5VPkA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Jan 21, 2020 at 11:33
          AM Paweł Gocyla via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div dir="ltr">
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">Hello,</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">I
                have a problem with ettus usrp B200 on linux ubuntu.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">I
                have made all steps regarding UHD and driver
                installation with this tutorial:</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><a
                  moz-do-not-send="true" style="color:rgb(17,85,204)"
href="https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z0000015BIZSA2&amp;l=pl-PL"
                  target="_blank">https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z0000015BIZSA2&amp;l=pl-PL</a></div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">I
                turned on support for usb 3.0 in vmware settings.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">I
                installed intel drivers for support of usb 3.0 (on
                windows host) -&gt; after that vmware was finding this
                device as B200 for a while but after host windows
                restart is identifying this device as before as
                WestBridge. In ubuntu I have warning from vmware
                workstation that there is a driver error.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">In
                windows host this device is properly identyfied as Ettus
                Research LLC B20/B210. On ubuntu I installed driver via
                apt - libuhd3.15.0.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">uhd_usrp_probe
                and uhd_find_devices can't find any usrp devices.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">lsusb
                also doesn't recognise this usrp B200 device.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">I
                was searching in google for more information but I don't
                have any ideas how to fix it and what is wrong.</div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br>
              </div>
              <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">Thanks
                in advance for your help !</div>
            </div>
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
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr">
          <div>
            <div dir="ltr">Michael Dickens<br>
              Ettus Research Technical Support<br>
              Email: <a moz-do-not-send="true"
                href="mailto:support@ettus.com" target="_blank">support@ettus.com</a><br>
              Web: <a moz-do-not-send="true" href="https://ettus.com/"
                target="_blank">https://ettus.com/</a></div>
          </div>
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
    <br>
  </body>
</html>

--------------030208000200050503090304--


--===============4399733803814715053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4399733803814715053==--

