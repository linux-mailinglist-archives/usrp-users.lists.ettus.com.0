Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAB52AC0C4
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 17:24:48 +0100 (CET)
Received: from [::1] (port=55468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kc9yI-00028W-G1; Mon, 09 Nov 2020 11:24:46 -0500
Received: from mail-qt1-f174.google.com ([209.85.160.174]:45781)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kc9yE-00020j-Bt
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 11:24:42 -0500
Received: by mail-qt1-f174.google.com with SMTP id v11so5967572qtq.12
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 08:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=4+CmTl+dXWMHQSfALZiIznA7TxgtVZXx0FkqXfmmwFQ=;
 b=qmsDIKE8gHAmqLrt7i4SQheVidulEzXDBBdgxB+G7wtzeI+iphsqnWsBnDBsiuNYx3
 n/f3VgAfmPDk39IdB37EPcJRZtzrNwgEAAm6nrELV/5EPIaRcxgIZ4czjjwBi9I+euzz
 wsiAH5m+cW7aV3Of+/hWZZ51ZuwtvurNTTOq44L3vOE+nyjBQMnqQap4gaMrl+WkHY5D
 ZBoKL0JYupepZzGxkSPsyuxt6EU2snEwSu5JtwDFRach3vLYWKoXpt16DYl8t53HR2Im
 XtVvQb0qAR3Sc066hYxWUd6kueUEkaJbUQ53uS34RD1xQSjVvI6/lQ0tgYOjIJr7x0TJ
 8e3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=4+CmTl+dXWMHQSfALZiIznA7TxgtVZXx0FkqXfmmwFQ=;
 b=SvPoQODQMxnZecSCAztp1oXfhcR9SYNj+F+UgMfwUQxUSrLurjeE43HhkPJvt3DZun
 Fi0DGsE/NF00vaTv1W4PWk/SUS+o25tkyJnA+RQ9e1mzl/FuB2Q6zn6bZQOrjQf/33iU
 cODBZCCUdMm8SQ6nkLaF3y0316Q7UFnfZqS8Cb+qPcEF2PpUOgo2blwONb+w8ghFwaQN
 +sgSMe304A7aVeVqPb+IVGAIK7Ze3WP6nxiPhLtdbdqXkchljOUEDTwXSSUvmTy8tnWe
 Kz5BnyD5GPSwU41R0UqYFHcEATN1bfoVd/69ipRqePwmGPkPTiqJ8huJRgiAzAeVyY60
 lHMg==
X-Gm-Message-State: AOAM531HI11+RpJC95VdlGV0/VKrcl0QTr6nNsDEJ8pK4FwAW0rAPrF6
 Os75kMNMugjiKgQkoI0vhz8YKjaxDpI=
X-Google-Smtp-Source: ABdhPJzIfAg07M8hCV4mOe5u5EnnwWGM5LyJx4rLJP6+1GaT0eCo+EM0CHdlNCyTqG2CEShGISmkKw==
X-Received: by 2002:ac8:1287:: with SMTP id y7mr14041117qti.108.1604939041130; 
 Mon, 09 Nov 2020 08:24:01 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id x22sm6302060qkn.125.2020.11.09.08.24.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Nov 2020 08:24:00 -0800 (PST)
Message-ID: <5FA96D1F.9030905@gmail.com>
Date: Mon, 09 Nov 2020 11:23:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CALNMZ8Wf-ZjvRRW9soXiF7xqAzxS81+5TA_8kSPYgBKzrrkSxg@mail.gmail.com>
 <CAGNhwTNMjBJKp_xpLkW_2a4pk+k+xWZGRkStvz1eQHJURE6w6Q@mail.gmail.com>
In-Reply-To: <CAGNhwTNMjBJKp_xpLkW_2a4pk+k+xWZGRkStvz1eQHJURE6w6Q@mail.gmail.com>
Subject: Re: [USRP-users] Trouble with Python API
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
Content-Type: multipart/mixed; boundary="===============2888020425585351839=="
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
--===============2888020425585351839==
Content-Type: multipart/alternative;
 boundary="------------090002070406050009060804"

This is a multi-part message in MIME format.
--------------090002070406050009060804
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/09/2020 09:59 AM, Michael Dickens via USRP-users wrote:
> Check the PYTHONPATH to make sure it holds the correct install 
> directory for UHD Python. I'm guessing it does not. I'm pretty sure 
> UHD by default installs its Python library and files into 
> "/usr/local/lib/python3/site-packages" ... or "dist-packages" ... note 
> the "/python3/" rather than some specific 3.X version as was the case 
> for earlier UHD (and many other projects). - MLD
Also in the log of activities, I see BOTH a "pybombs install uhd", AND a 
build of the latest HEAD of UHD, but no actual compile+install of
   that built code.

>
> On Mon, Nov 9, 2020 at 1:36 AM Brendan Horsfield via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Folks,
>
>     I would like to write my own Python 3 script to stream Rx samples
>     off my Ettus B210 USRP.  I have installed the Python API on my
>     Ubuntu laptop, but I can't seem to get it to work, despite trying
>     numerous ideas I found on the Ettus Knowledge Base.
>
>     For example, check out the following Python interpreter log.  I
>     can call "import uhd" OK, but the call to uhd.usrp.MultiUSRP()
>     causes an error:
>
>     Python 3.7.7 (default, Mar 26 2020, 15:48:22)
>     [GCC 7.3.0] :: Anaconda, Inc. on linux
>     Type "help", "copyright", "credits" or "license" for more information.
>     >>> import uhd
>     >>> my_usrp = uhd.usrp.MultiUSRP("type=b200")
>     Traceback (most recent call last):
>       File "<stdin>", line 1, in <module>
>     AttributeError: module 'uhd' has no attribute 'usrp'
>     >>>
>
>     Another example:  If I try to run the example script
>     "uhd/host/examples/python/rx_to_file.py", I get the following
>     error:  "ModuleNotFoundError: No module named 'uhd'"
>
>     The API installation procedure I have followed to this point is as
>     follows:
>     1.  python3 -m pip install python-dev-tools --user --upgrade
>     2.  git clone https://github.com/EttusResearch/uhd.git
>     3.  pybombs install uhd
>     4.  cmake $HOME/uhd/host
>
>     ######################################################
>     -- # UHD enabled components
>     -- ######################################################
>     --   * LibUHD
>     --   * LibUHD - C API
>     --   * LibUHD - Python API
>     --   * Examples
>     --   * Utils
>     --   * Tests
>     --   * USB
>     --   * B100
>     --   * B200
>     --   * USRP1
>     --   * USRP2
>     --   * X300
>     --   * MPMD
>     --   * N300
>     --   * N320
>     --   * E320
>     --   * E300
>     --   * OctoClock
>     --   * Manual
>     --   * API/Doxygen
>     --   * Man Pages
>     -- 
>     -- ######################################################
>     -- # UHD disabled components
>     -- ######################################################
>     --   * DPDK
>     -- 
>     -- ******************************************************
>     -- * You are building the UHD development master branch.
>     -- * For production code, we recommend our stable,
>     -- * releases or using the release branch (maint).
>     -- ******************************************************
>     -- Building version: 4.0.0.0-46-g57ca4235
>     -- Using install prefix: /usr/local
>     -- Configuring done
>     -- Generating done
>     -- Build files have been written to: /home/anyone/uhd/host
>
>     5.  Set up Ubuntu dependencies: sudo apt-get install
>     libboost-all-dev libusb-1.0-0-dev doxygen python3-docutils
>     python3-mako python3-numpy python3-requests python3-ruamel.yaml
>     python3-setuptools cmake build-essential
>     6.  Add the following line to .bashrc:  export
>     LD_LIBRARY_PATH=/usr/local/lib
>
>     FYI -- I am running Ubuntu 18.04 on an HP Omen laptop with an
>     Intel i7-8750H CPU and 32 GB of RAM.
>
>     Can anyone tell me what the source of this problem could be?  Any
>     advice or suggestions would be greatly appreciated!
>
>     Thanks & Regards,
>     Brendan.
>
>
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


--------------090002070406050009060804
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/09/2020 09:59 AM, Michael Dickens
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAGNhwTNMjBJKp_xpLkW_2a4pk+k+xWZGRkStvz1eQHJURE6w6Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">Check the PYTHONPATH to make sure it holds the
        correct install directory for UHD Python. I'm guessing it does
        not. I'm pretty sure UHD by default installs its Python library
        and files into "/usr/local/lib/python3/site-packages" ... or
        "dist-packages" ... note the "/python3/" rather than some
        specific 3.X version as was the case for earlier UHD (and many
        other projects). - MLD</div>
    </blockquote>
    Also in the log of activities, I see BOTH a "pybombs install uhd",
    AND a build of the latest HEAD of UHD, but no actual compile+install
    of<br>
      that built code.<br>
    <br>
    <blockquote
cite="mid:CAGNhwTNMjBJKp_xpLkW_2a4pk+k+xWZGRkStvz1eQHJURE6w6Q@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Nov 9, 2020 at 1:36 AM
          Brendan Horsfield via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Hi Folks,
            <div><br>
            </div>
            <div>I would like to write my own Python 3 script to stream
              Rx samples off my Ettus B210 USRP.  I have installed the
              Python API on my Ubuntu laptop, but I can't seem to get it
              to work, despite trying numerous ideas I found on the
              Ettus Knowledge Base.</div>
            <div><br>
            </div>
            <div>For example, check out the following Python interpreter
              log.  I can call "import uhd" OK, but the call to
              uhd.usrp.MultiUSRP() causes an error: </div>
            <div><br>
            </div>
            <div>Python 3.7.7 (default, Mar 26 2020, 15:48:22) <br>
              [GCC 7.3.0] :: Anaconda, Inc. on linux<br>
              Type "help", "copyright", "credits" or "license" for more
              information.<br>
              &gt;&gt;&gt; import uhd<br>
              &gt;&gt;&gt; my_usrp = uhd.usrp.MultiUSRP("type=b200")<br>
              Traceback (most recent call last):<br>
                File "&lt;stdin&gt;", line 1, in &lt;module&gt;<br>
              AttributeError: module 'uhd' has no attribute 'usrp'<br>
              &gt;&gt;&gt; <br>
            </div>
            <div><br>
            </div>
            <div>Another example:  If I try to run the example script
              "uhd/host/examples/python/rx_to_file.py", I get the
              following error:  "ModuleNotFoundError: No module named
              'uhd'" </div>
            <div><br>
            </div>
            <div>The API installation procedure I have followed to this
              point is as follows:</div>
            <div>1.  python3 -m pip install python-dev-tools --user
              --upgrade</div>
            <div>2.  git clone <a moz-do-not-send="true"
                href="https://github.com/EttusResearch/uhd.git"
                target="_blank">https://github.com/EttusResearch/uhd.git</a></div>
            <div>3.  pybombs install uhd</div>
            <div>4.  cmake $HOME/uhd/host</div>
            <div><br>
            </div>
            <div>######################################################<br>
              -- # UHD enabled components                              <br>
              -- ######################################################<br>
              --   * LibUHD<br>
              --   * LibUHD - C API<br>
              --   * LibUHD - Python API<br>
              --   * Examples<br>
              --   * Utils<br>
              --   * Tests<br>
              --   * USB<br>
              --   * B100<br>
              --   * B200<br>
              --   * USRP1<br>
              --   * USRP2<br>
              --   * X300<br>
              --   * MPMD<br>
              --   * N300<br>
              --   * N320<br>
              --   * E320<br>
              --   * E300<br>
              --   * OctoClock<br>
              --   * Manual<br>
              --   * API/Doxygen<br>
              --   * Man Pages<br>
              -- <br>
              -- ######################################################<br>
              -- # UHD disabled components                             <br>
              -- ######################################################<br>
              --   * DPDK<br>
              -- <br>
              -- ******************************************************<br>
              -- * You are building the UHD development master branch.<br>
              -- * For production code, we recommend our stable,<br>
              -- * releases or using the release branch (maint).<br>
              -- ******************************************************<br>
              -- Building version: 4.0.0.0-46-g57ca4235<br>
              -- Using install prefix: /usr/local<br>
              -- Configuring done<br>
              -- Generating done<br>
              -- Build files have been written to: /home/anyone/uhd/host<br>
            </div>
            <div><br>
            </div>
            <div>5.  Set up Ubuntu dependencies: sudo apt-get install
              libboost-all-dev libusb-1.0-0-dev doxygen python3-docutils
              python3-mako python3-numpy python3-requests
              python3-ruamel.yaml python3-setuptools cmake
              build-essential</div>
            <div>6.  Add the following line to .bashrc:  export
              LD_LIBRARY_PATH=/usr/local/lib</div>
            <div><br>
            </div>
            <div>FYI -- I am running Ubuntu 18.04 on an HP Omen laptop
              with an Intel i7-8750H CPU and 32 GB of RAM.</div>
            <div><br>
            </div>
            <div>Can anyone tell me what the source of this problem
              could be?  Any advice or suggestions would be greatly
              appreciated!</div>
            <div><br>
            </div>
            <div>Thanks &amp; Regards,</div>
            <div>Brendan.</div>
            <div><br>
            </div>
            <div><br>
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

--------------090002070406050009060804--


--===============2888020425585351839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2888020425585351839==--

