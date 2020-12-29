Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B52E7299
	for <lists+usrp-users@lfdr.de>; Tue, 29 Dec 2020 18:28:48 +0100 (CET)
Received: from [::1] (port=55716 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kuInf-0008AT-OM; Tue, 29 Dec 2020 12:28:47 -0500
Received: from mail-qt1-f171.google.com ([209.85.160.171]:43125)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kuInb-000819-Ms
 for usrp-users@lists.ettus.com; Tue, 29 Dec 2020 12:28:43 -0500
Received: by mail-qt1-f171.google.com with SMTP id 2so9342745qtt.10
 for <usrp-users@lists.ettus.com>; Tue, 29 Dec 2020 09:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=QaHbW/DeL8yhETj4mRpfQRh1wbVmPucfgLjGJ6Eivws=;
 b=aHxRVxH0t+yrOqCX5waY2cV2+v+IeP8XJPdA/FWD6qX+Drf3pircHw63ArIFL76xNz
 qXHjC8dhkvtaabQYsefkbGUWI9Cy+CbRKGrSCLWX0DnALytHb7r90jaY/jGzRx94kaOj
 ooCkvbwet1xe5zUbL1PotA5yDKZKnKaR4m3uwXNsVLmGbXYjm58Dm/PMORV7XuAve/sV
 ZTnXLdj5To9x5q7WvMzhqaoJ1OfaE9e+I1TyECe7oDOjIZb0UnwO9QXMRgPEhbuSXfZ6
 Q6hRqzr7D07FWU8xjH29Oc+b+Wi/KnFeknK4QmYAHIa5cIG60dmg7Q6G6Cx/tHP+6kZt
 kyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=QaHbW/DeL8yhETj4mRpfQRh1wbVmPucfgLjGJ6Eivws=;
 b=MhmkZLEX8gLQ4ZO1IgvvnJAClp3jv0g9RnFzSaC8AhEk9t6Cuzory9dcyD7utTJ0Gv
 e1+IVFl8+PZjmOEkWrF9mYiWY9biBhIezy6SAbpNi0Zh6HrOaW19qDdExv0CCeS4NSud
 gmaMnXYEWoJSQffKRPZev0j1pfEa3dNBgvjVNmJ70QkdUiUH2IkK4p+rWiAJr70JhWTK
 Fcm9sEo9Ts83CaNLp7QrayGnHA41HJwOhLeiZ5mULNc3ilvvp1l05QXz1XjpCHSX90/s
 grIxUsNnLhWfGeUg3HbmX3sAWCGrmRwxH+11By+Rp/rLWwNLeZFca4k0Cpd/WYIIXY91
 m3TQ==
X-Gm-Message-State: AOAM5309ypJ6Ljg6DlUcGkZvl+45Q85Qy8aOvnjsPfVkM3DNdajeL/E+
 1NMURM1C9+F6IZMoWzB5H8XyJGYB+u4=
X-Google-Smtp-Source: ABdhPJzgmTVWfpw3WzucDYnsYXcLlE2DCyIghrj0q0z4Q5rMhfPccT7mWBltJ4Bdvo0ZkBn9euAMzw==
X-Received: by 2002:ac8:564e:: with SMTP id 14mr48993942qtt.7.1609262882639;
 Tue, 29 Dec 2020 09:28:02 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id h26sm25548142qtq.18.2020.12.29.09.28.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Dec 2020 09:28:02 -0800 (PST)
Message-ID: <5FEB6721.9050100@gmail.com>
Date: Tue, 29 Dec 2020 12:28:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
In-Reply-To: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0806242144597812766=="
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
--===============0806242144597812766==
Content-Type: multipart/alternative;
 boundary="------------090909050109050300030204"

This is a multi-part message in MIME format.
--------------090909050109050300030204
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/2020 12:18 PM, Ashutosh Singh via USRP-users wrote:
> Hi ,
> I am trying to install the UHD libraries using binaries provided by 
> Ettus research following below page:
> USRP Hardware Driver and USRP Manual: Binary Installation (ettus.com) 
> <https://files.ettus.com/manual/page_install.html#install_linux>
>
>
> My System :
>
> NAME="Ubuntu"
> VERSION="18.04.5 LTS (Bionic Beaver)"
>
>
>
> *Error:*
>
>     /root@yy217925:/home/lab_5g/openairinterface5g/openairinterface5g/cmake_targets/lte_build_oai/build#*sudo
>     add-apt-repository ppa:ettusresearch/uhd*/
>     /
>     /
>     / More info:
>     https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>     <https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd>/
>     /Press [ENTER] to continue or Ctrl-c to cancel adding it./
>     /
>     /
>     /Hit:1 http://nl.archive.ubuntu.com/ubuntu bionic InRelease/
>     /Hit:2 http://nl.archive.ubuntu.com/ubuntu bionic-updates InRelease/
>     /Hit:3 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease/
>     /Hit:4 http://nl.archive.ubuntu.com/ubuntu bionic-security InRelease/
>     /Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu bionic
>     InRelease/
>     /Hit:7 http://repo.zabbix.com/zabbix/5.0/ubuntu bionic InRelease/
>     /Ign:6 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
>     bionic InRelease/
>     /Err:8 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
>     bionic Release/
>     /  404 Not Found [IP: 23.253.215.39 443]/
>     /Reading package lists... Done/
>     /E: The repository
>     'http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic
>     Release' does not have a Release file./
>     /N: Updating from such a repository can't be done securely, and is
>     therefore disabled by default./
>     /N: See apt-secure(8) manpage for repository creation and user
>     configuration details./
>
>
>
>     Please help me solve it !!
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
This looks like broken PPA infrastructure.  I have a query in to Ettus 
engineering to see what's going on .



--------------090909050109050300030204
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/29/2020 12:18 PM, Ashutosh Singh
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr"><font color="#0000ff">Hi ,</font>
                <div><font color="#0000ff">I am trying to install the
                    UHD libraries using binaries provided by Ettus
                    research following below page:</font></div>
                <div><a moz-do-not-send="true"
                    href="https://files.ettus.com/manual/page_install.html#install_linux">USRP
                    Hardware Driver and USRP Manual: Binary Installation
                    (ettus.com)</a><font color="#0000ff"><br>
                  </font></div>
                <div><font color="#0000ff"><br>
                  </font></div>
                <div><font color="#0000ff"><br>
                  </font></div>
                <div><font color="#0000ff">My System :</font></div>
                <div><font color="#0000ff"><br>
                  </font></div>
                <div>
                  <div><font color="#0000ff">NAME="Ubuntu"</font></div>
                  <div><font color="#0000ff">VERSION="18.04.5 LTS
                      (Bionic Beaver)"</font></div>
                </div>
                <div><font color="#0000ff"><br>
                  </font></div>
                <div><font color="#0000ff"><br>
                  </font></div>
                <div><font color="#0000ff"><br>
                  </font></div>
                <div><font color="#ff0000"><b>Error:</b></font></div>
                <div><font color="#0000ff"><br>
                  </font></div>
              </div>
            </div>
          </div>
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>root@yy217925:/home/lab_5g/openairinterface5g/openairinterface5g/cmake_targets/lte_build_oai/build#<b><font
                              size="4"> sudo add-apt-repository
                              ppa:ettusresearch/uhd</font></b></i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i><br>
                        </i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i> More info: <a
                            moz-do-not-send="true"
                            href="https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a></i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Press [ENTER] to
                          continue or Ctrl-c to cancel adding it.</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i><br>
                        </i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Hit:1 <a
                            moz-do-not-send="true"
                            href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Hit:2 <a
                            moz-do-not-send="true"
                            href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                          bionic-updates InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Hit:3 <a
                            moz-do-not-send="true"
                            href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                          bionic-backports InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Hit:4 <a
                            moz-do-not-send="true"
                            href="http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a>
                          bionic-security InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Hit:5 <a
                            moz-do-not-send="true"
                            href="http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Hit:7 <a
                            moz-do-not-send="true"
                            href="http://repo.zabbix.com/zabbix/5.0/ubuntu">http://repo.zabbix.com/zabbix/5.0/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Ign:6 <a
                            moz-do-not-send="true"
                            href="https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i
                          style="background-color:rgb(255,255,0)">Err:8
                          <a moz-do-not-send="true"
                            href="https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                          bionic Release</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i
                          style="background-color:rgb(255,255,0)">  404 
                          Not Found [IP: 23.253.215.39 443]</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>Reading package
                          lists... Done</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>E: The repository '<a
                            moz-do-not-send="true"
                            href="http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                          bionic Release' does not have a Release file.</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>N: Updating from such
                          a repository can't be done securely, and is
                          therefore disabled by default.</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color="#0000ff"><i>N: See apt-secure(8)
                          manpage for repository creation and user
                          configuration details.</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
          </blockquote>
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div>Please help me solve it !!</div>
          </blockquote>
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div><br>
                </div>
              </div>
            </div>
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
    This looks like broken PPA infrastructure.  I have a query in to
    Ettus engineering to see what's going on .<br>
    <br>
    <br>
  </body>
</html>

--------------090909050109050300030204--


--===============0806242144597812766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0806242144597812766==--

