Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3DE145D42
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 21:44:34 +0100 (CET)
Received: from [::1] (port=38854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuMrS-00023M-PC; Wed, 22 Jan 2020 15:44:26 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:38674)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iuMrO-0001yp-Rf
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 15:44:22 -0500
Received: by mail-qk1-f182.google.com with SMTP id k6so1151412qki.5
 for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2020 12:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=OZ8LcWpt5Uc574FRCRGc4JdbFqgn/4x5bpFiq2qYBcw=;
 b=atFXQjfXSALEnW1n1kkFD4kRThWYlzYzX9sBeXHkng2xX4XHbsx1/JasMANPP40JLf
 UAmSkjI2Ekr0MLu0liGz4eL8q3yGUPp0XkMQkN3WeMPeuD01itU22eUxy5Yuw7RB3dPD
 8b6MowbtlbgYwld/6qlquTdmqJyil/Fmg8MLUdPgoUj5FrpwS6ffz2ENQrYVwp5NAgtp
 To4A46tqRALqIdHjOFsW7pHFJqzs8X+Ol+jV8sKMwCUqORuNY3r41XT75WXDZ7OXp4l4
 KSolf5HNqR8IsxNdtoMyGDfAgZMhS6G8QtCf7uRccYP3q1r25qWeUsz9Drd8DRvIwrDK
 qxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=OZ8LcWpt5Uc574FRCRGc4JdbFqgn/4x5bpFiq2qYBcw=;
 b=cJo8jpSR3EsTl/955fXuPMpKEHtlxgAch0Mjp+VFtAaFoY1G/weZNB8fmTebrH4q2I
 YplVZCA+K7a2Dr7OArwuM5HA53D0KI8QnY5HgmP9n7U/T7Ja7WSFco6SsqRDIQ1ipNSy
 EICAyrtGcD1gHZMSa6DDypLA97cPO3bHcXhVYw8uzjWhS4Fk5ObwZ8deNzVaopMORRCo
 G7mB+WY0NCm0DDxuZw8JWWKgGpuC67AOEVBlZPBECWpq3nWtsXujURFJJzJRzj0Th7IT
 Uw79uNw5LkufzxljG2/TBuS+fNJjiItQvQT1yLGS19czHkOwEH3za75XWXMKlUTfiZCv
 1Otw==
X-Gm-Message-State: APjAAAWQ/8KKjYPKaONaL2D74U1tIxYu0DS1cJFVKM+OG0hiik5T9pbp
 lkPlAiEIgXwufyaB06mSYLzuLhPMKNE=
X-Google-Smtp-Source: APXvYqy8ctgUtAtGSYZVbZIgFdzC9zvXvNcQovJXEJWX1dLXWQZrEb2Z/6022ebrT29oW5inYmExtg==
X-Received: by 2002:a37:e317:: with SMTP id y23mr12408707qki.431.1579725822028; 
 Wed, 22 Jan 2020 12:43:42 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id g18sm19313975qki.13.2020.01.22.12.43.41
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jan 2020 12:43:41 -0800 (PST)
Message-ID: <5E28B3FC.1080205@gmail.com>
Date: Wed, 22 Jan 2020 15:43:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANQ3h38sFEJXws1oHg6tJLiAaoRic8J6rs=JJRBkRLM_TccJPA@mail.gmail.com>
In-Reply-To: <CANQ3h38sFEJXws1oHg6tJLiAaoRic8J6rs=JJRBkRLM_TccJPA@mail.gmail.com>
Subject: Re: [USRP-users] UHD installation, image download fails,
 unhandled exception
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
Content-Type: multipart/mixed; boundary="===============3648982483689874584=="
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
--===============3648982483689874584==
Content-Type: multipart/alternative;
 boundary="------------020205060201060106060902"

This is a multi-part message in MIME format.
--------------020205060201060106060902
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/22/2020 03:37 PM, Saeid Hashemi via USRP-users wrote:
> Hello everyone,
>
> During the installation of UHD, I get an unhandled exception when 
> downloading images. The resulting output is shown below. Any advice or 
> help would be greatly appreciated.
>
> Thank you
> Saeid
>
>
>
>
>
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Suggested packages:
>   gnuradio
> The following NEW packages will be installed:
>   libuhd-dev libuhd003 uhd-host
> 0 upgraded, 3 newly installed, 0 to remove and 238 not upgraded.
> Need to get 0 B/10.6 MB of archives.
> After this operation, 51.3 MB of additional disk space will be used.
> Selecting previously unselected package libuhd-dev.
> (Reading database ... 195896 files and directories currently installed.)
> Preparing to unpack .../libuhd-dev_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...
> Unpacking libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...
> Selecting previously unselected package libuhd003:amd64.
> Preparing to unpack .../libuhd003_3.13.0.1-0ubuntu1~bionic1_amd64.deb ...
> Unpacking libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...
> Replaced by files in installed package libuhd3.14.1:amd64 
> (3.14.1.1-0ubuntu1~bionic1) ...
> Selecting previously unselected package uhd-host.
> Preparing to unpack .../uhd-host_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...
> Unpacking uhd-host (3.14.1.1-0ubuntu1~bionic1) ...
> Setting up libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...
> Setting up uhd-host (3.14.1.1-0ubuntu1~bionic1) ...
> net.core.rmem_max = 50000000
> net.core.wmem_max = 1048576
> Setting up libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...
> Processing triggers for libc-bin (2.27-3ubuntu1) ...
> Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> uhd-host is already the newest version (3.14.1.1-0ubuntu1~bionic1).
> 0 upgraded, 0 newly installed, 0 to remove and 238 not upgraded.
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] No inventory file found at 
> /usr/share/uhd/images/inventory.json. Creating an empty one.
> 00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip
> 19756 kB / 19756 kB (100%) x3xx_x310_fpga_default-gbb85bdff.zip
> 02757 kB / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip
> 02131 kB / 02131 kB (100%) n230_n230_fpga_default-gbb85bdff.zip
> 00522 kB / 00522 kB (100%) usrp1_b100_fpga_default-g6bea23d.zip
> [ERROR] Downloader raised an unhandled exception: 
> HTTPConnectionPool(host='files.ettus.com <http://files.ettus.com>', 
> port=80): Max retries exceeded with url: 
> /binaries/cache//b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip 
> (Caused by NewConnectionError('<urllib3.connection.HTTPConnection 
> object at 0x7f66b46ec890>: Failed to establish a new connection: 
> [Errno 110] Connection timed out',))
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com 
> <mailto:support@ettus.com>
> build have failed
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
This looks like a network issue--it cannot connect to files.ettus.com

Said issue must be local to you, since I just tried this and it's 
working fine--so the Ettus server is working properly, you have a local
   networking issue.



--------------020205060201060106060902
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/22/2020 03:37 PM, Saeid Hashemi
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANQ3h38sFEJXws1oHg6tJLiAaoRic8J6rs=JJRBkRLM_TccJPA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hello everyone,</div>
        <div><br>
          <div>During the installation of UHD, I get an unhandled
            exception when downloading images. The resulting output is
            shown below. Any advice or help would be greatly
            appreciated.</div>
          <div><br>
          </div>
          <div>Thank you</div>
          <div>Saeid</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><span style="font-family:monospace">Reading package
              lists... Done<br>
              Building dependency tree       <br>
              Reading state information... Done<br>
              Suggested packages:<br>
                gnuradio<br>
              The following NEW packages will be installed:<br>
                libuhd-dev libuhd003 uhd-host<br>
              0 upgraded, 3 newly installed, 0 to remove and 238 not
              upgraded.<br>
              Need to get 0 B/10.6 MB of archives.<br>
              After this operation, 51.3 MB of additional disk space
              will be used.<br>
              Selecting previously unselected package libuhd-dev.<br>
              (Reading database ... 195896 files and directories
              currently installed.)<br>
              Preparing to unpack
              .../libuhd-dev_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...<br>
              Unpacking libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Selecting previously unselected package libuhd003:amd64.<br>
              Preparing to unpack
              .../libuhd003_3.13.0.1-0ubuntu1~bionic1_amd64.deb ...<br>
              Unpacking libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...<br>
              Replaced by files in installed package libuhd3.14.1:amd64
              (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Selecting previously unselected package uhd-host.<br>
              Preparing to unpack
              .../uhd-host_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...<br>
              Unpacking uhd-host (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Setting up libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Setting up uhd-host (3.14.1.1-0ubuntu1~bionic1) ...<br>
              net.core.rmem_max = 50000000<br>
              net.core.wmem_max = 1048576<br>
              Setting up libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...<br>
              Processing triggers for libc-bin (2.27-3ubuntu1) ...<br>
              Processing triggers for man-db (2.8.3-2ubuntu0.1) ...<br>
              Reading package lists... Done<br>
              Building dependency tree       <br>
              Reading state information... Done<br>
              uhd-host is already the newest version
              (3.14.1.1-0ubuntu1~bionic1).<br>
              0 upgraded, 0 newly installed, 0 to remove and 238 not
              upgraded.<br>
              [INFO] Images destination: /usr/share/uhd/images<br>
              [INFO] No inventory file found at
              /usr/share/uhd/images/inventory.json. Creating an empty
              one.<br>
              00006 kB / 00006 kB (100%)
              usrp1_b100_fw_default-g6bea23d.zip<br>
              19756 kB / 19756 kB (100%)
              x3xx_x310_fpga_default-gbb85bdff.zip<br>
              02757 kB / 02757 kB (100%)
              usrp2_n210_fpga_default-g6bea23d.zip<br>
              02131 kB / 02131 kB (100%)
              n230_n230_fpga_default-gbb85bdff.zip<br>
              00522 kB / 00522 kB (100%)
              usrp1_b100_fpga_default-g6bea23d.zip<br>
              [ERROR] Downloader raised an unhandled exception:
              HTTPConnectionPool(host='<a moz-do-not-send="true"
                href="http://files.ettus.com">files.ettus.com</a>',
              port=80): Max retries exceeded with url:
              /binaries/cache//b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
              (Caused by
              NewConnectionError('&lt;urllib3.connection.HTTPConnection
              object at 0x7f66b46ec890&gt;: Failed to establish a new
              connection: [Errno 110] Connection timed out',))<br>
              You can run this again with the '--verbose' flag to see
              more information<br>
              If the problem persists, please email the output to: <a
                moz-do-not-send="true" href="mailto:support@ettus.com">support@ettus.com</a><br>
              build have failed</span><br>
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
    This looks like a network issue--it cannot connect to
    files.ettus.com<br>
    <br>
    Said issue must be local to you, since I just tried this and it's
    working fine--so the Ettus server is working properly, you have a
    local<br>
      networking issue.<br>
    <br>
    <br>
  </body>
</html>

--------------020205060201060106060902--


--===============3648982483689874584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3648982483689874584==--

