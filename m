Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3322E8608
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jan 2021 02:30:01 +0100 (CET)
Received: from [::1] (port=43834 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kvVjx-0007E1-Dq; Fri, 01 Jan 2021 20:29:57 -0500
Received: from mail-qv1-f41.google.com ([209.85.219.41]:41638)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kvVju-00079r-2W
 for usrp-users@lists.ettus.com; Fri, 01 Jan 2021 20:29:54 -0500
Received: by mail-qv1-f41.google.com with SMTP id h16so10501778qvu.8
 for <usrp-users@lists.ettus.com>; Fri, 01 Jan 2021 17:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=P9LvGJI2hwniFmry2UHKSdXi5K5WFg+WHisZ/3I3/lw=;
 b=Q9iTTkV0rg+9SA82h/xobJaOKIOq+rI5/y3rwvNFW7aTHqE+ySxAVNBnGnEEclSuHb
 uz2GLZiMGygagdMmc9zd1ahMTGnrW91FbjKPB1+jltglgrBVcxu2bOU2SCI9FlcuQ41Q
 U7ZTiZt13mV8NR7XWVR2rc2zUSYWCNri30b60d+2fMfwTLA2MfR7rCEEGcWt3LEnsoPk
 BJ47ZMNsbRJr6D8lYZH9OHkpx0GcWG44RS+G8R9CiqwGTBacNxNGXQnVLximfW8sGUxi
 +db/b7Sq9jk9vkuaUv8afC1T+dQghfHAsGdsxg3PmBk77YpeD78sBUzASp5Q8AjePi4H
 ONmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=P9LvGJI2hwniFmry2UHKSdXi5K5WFg+WHisZ/3I3/lw=;
 b=A57LneI1NR3Nacg0M1B/viAiipoAf4GrSSI0sfH2LZ9f1yHypvPMC7HEEj5vWMzOAv
 uahXXaEQuzSFjuoDkcwviJrf/yBG7vBsfRqw3FF7OUytRsYlk18dpwBMl9r0277ripje
 Jtat3SqUJ1Pz4jk9bYB9fvAQsYLGpNL9y090dKE3h/0FQ6vEg8+COXg0Dp3OKEjf5oYX
 r0mjKj5gO+DI6fuTuvNQ8ZtYvzKLLdk9V/bu2lEtqrHDeM6m6RckZXNgP/9o56W2zCm0
 k6cdOpfdnCINWJBXbnPdLbKgqQCHHnbtEaj8GAxfa7hRvx1VLbx/O25XbN7U/JifjRzX
 4aQg==
X-Gm-Message-State: AOAM531AIPF6TjQfHpPpOA5YFl4mKTedID2sW6ujAovVE21yb89JR+qS
 EmH6nUr8FPPPzotc/tmaK3L/+QJ/5C4=
X-Google-Smtp-Source: ABdhPJzns6OMKMTUDqvy+L7sGyyH4phcGAO3QF6LxFBmLyVUmAATfOWW+wmYt3Xsl/e80KA51WNX/Q==
X-Received: by 2002:a0c:b38b:: with SMTP id t11mr41537074qve.58.1609550953337; 
 Fri, 01 Jan 2021 17:29:13 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id l20sm35569551qtu.25.2021.01.01.17.29.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 Jan 2021 17:29:12 -0800 (PST)
Message-ID: <5FEFCC68.1050207@gmail.com>
Date: Fri, 01 Jan 2021 20:29:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
 <5FEB6721.9050100@gmail.com>
 <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
 <5FED25A4.7080507@gmail.com>
 <CAO38sJ6QkGPn8hWwh3=JtXEOVNsDUJ+XAm_d_c=iZ7DgvqODpQ@mail.gmail.com>
In-Reply-To: <CAO38sJ6QkGPn8hWwh3=JtXEOVNsDUJ+XAm_d_c=iZ7DgvqODpQ@mail.gmail.com>
Subject: Re: [USRP-users] USRP B210 UHD library installation issue
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
Content-Type: multipart/mixed; boundary="===============3091041583282523829=="
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
--===============3091041583282523829==
Content-Type: multipart/alternative;
 boundary="------------040907080509030207040709"

This is a multi-part message in MIME format.
--------------040907080509030207040709
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/31/2020 04:49 PM, Ashutosh Singh wrote:
> Hi Marcus,
> I tried tha as well but i think adding PPA repo is the onlY way to go 
> (many UHD dependencies get solved by adding PPA repo and because of 
> that some issues won't occur LATER while running the binary. Issues 
> occurring about uhd library shared_ptr and all):
>
>
> I am not able to compile my binary on one system but its working fine 
> on another system:
>
>
>     root@yy217925:/home/lab_5g/LTE-D2D/cmake_targets# *./build_oai -I
>     --UE*
>     Will install external packages
>     Will compile UE
>     CMAKE_CMD=cmake ..
>     RF HW set to None
>     Flags for Deadline scheduler: False
>     Flags for CPU Affinity: False
>     2. Setting the OAI PATHS ...
>     OPENAIR_DIR    = /home/lab_5g/LTE-D2D
>     FreeDiameter prefix not found, install freeDiameter if EPC, HSS
>     Installing packages
>     Hit:1 http://nl.archive.ubuntu.com/ubuntu bionic InRelease
>     Hit:2 http://nl.archive.ubuntu.com/ubuntu bionic-updates InRelease
>     Hit:3 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease
>     Hit:4 http://nl.archive.ubuntu.com/ubuntu bionic-security InRelease
>     Hit:6 http://repo.zabbix.com/zabbix/5.0/ubuntu bionic InRelease
>     Ign:5 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
>     bionic InRelease
>     Err:7 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
>     bionic Release
>       404  Not Found [IP: 23.253.215.39 443]
>     Reading package lists... Done
>     E: The repository
>     'http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic
>     Release' does not have a Release file.
>     N: Updating from such a repository can't be done securely, and is
>     therefore disabled by default.
>     N: See apt-secure(8) manpage for repository creation and user
>     configuration details.
>     build have failed
>
>
>
>
> Please help!!
>
>
This looks like a problem with the way OAI tries to build itself.  I 
don't use that stack myself, so I can't really help.

There are perhaps others on here with OAI experience.

I'll note that using the standard-repo provided UHD + friends seems to 
work fine for me for various test applications and Gnu Radio
   applications, so your issue is mostly because the OAI build insists 
on that PPA, and the PPA is currently unavailable.



--------------040907080509030207040709
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/31/2020 04:49 PM, Ashutosh Singh
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAO38sJ6QkGPn8hWwh3=JtXEOVNsDUJ+XAm_d_c=iZ7DgvqODpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Hi Marcus,
          <div>I tried tha as well but i think adding PPA repo is the
            onlY way to go (many UHD dependencies get solved by adding
            PPA repo and because of that some issues won't occur LATER
            while running the binary. Issues occurring about uhd library
            shared_ptr and all):</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>I am not able to compile my binary on one system but its
            working fine on another system:</div>
          <div><br>
          </div>
        </div>
        <blockquote style="margin:0 0 0 40px;border:none;padding:0px">
          <div>
            <div>
              <div><font size="1"><br>
                </font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">root@yy217925:/home/lab_5g/LTE-D2D/cmake_targets#
                </font><font size="4"><b>./build_oai -I --UE</b></font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Will install external packages</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Will compile UE</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">CMAKE_CMD=cmake ..</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">RF HW set to None</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Flags for Deadline scheduler: False</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Flags for CPU Affinity: False</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">2. Setting the OAI PATHS ...</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">OPENAIR_DIR    = /home/lab_5g/LTE-D2D</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">FreeDiameter prefix not found, install
                  freeDiameter if EPC, HSS</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Installing packages</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Hit:1 <a moz-do-not-send="true"
                    href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                  bionic InRelease</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Hit:2 <a moz-do-not-send="true"
                    href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                  bionic-updates InRelease</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Hit:3 <a moz-do-not-send="true"
                    href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                  bionic-backports InRelease</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Hit:4 <a moz-do-not-send="true"
                    href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                  bionic-security InRelease</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Hit:6 <a moz-do-not-send="true"
                    href="http://repo.zabbix.com/zabbix/5.0/ubuntu">http://repo.zabbix.com/zabbix/5.0/ubuntu</a>
                  bionic InRelease</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font style="background-color:rgb(255,255,0)"
                  size="1">Ign:5 <a moz-do-not-send="true"
                    href="https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                  bionic InRelease</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font style="background-color:rgb(255,255,0)"
                  size="1">Err:7 <a moz-do-not-send="true"
                    href="https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                  bionic Release</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font style="background-color:rgb(255,255,0)"
                  size="1">  404  Not Found [IP: 23.253.215.39 443]</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">Reading package lists... Done</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">E: The repository '<a
                    moz-do-not-send="true"
                    href="http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                  bionic Release' does not have a Release file.</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">N: Updating from such a repository
                  can't be done securely, and is therefore disabled by
                  default.</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">N: See apt-secure(8) manpage for
                  repository creation and user configuration details.</font></div>
            </div>
          </div>
          <div>
            <div>
              <div><font size="1">build have failed</font></div>
            </div>
          </div>
        </blockquote>
        <div dir="ltr">
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>Please help!!</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    This looks like a problem with the way OAI tries to build itself.  I
    don't use that stack myself, so I can't really help.<br>
    <br>
    There are perhaps others on here with OAI experience.<br>
    <br>
    I'll note that using the standard-repo provided UHD + friends seems
    to work fine for me for various test applications and Gnu Radio<br>
      applications, so your issue is mostly because the OAI build
    insists on that PPA, and the PPA is currently unavailable.<br>
    <br>
    <br>
  </body>
</html>

--------------040907080509030207040709--


--===============3091041583282523829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3091041583282523829==--

