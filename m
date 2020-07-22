Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4739D229DE7
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:08:13 +0200 (CEST)
Received: from [::1] (port=52746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyIE0-0005vT-Cd; Wed, 22 Jul 2020 13:08:12 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:37647)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyIDw-0005o5-MU
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:08:08 -0400
Received: by mail-qt1-f193.google.com with SMTP id d27so2356987qtg.4
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=koj8vQ6Vwow9WHURvVfbih/j+pCJk0OPr/7+C3C/8lI=;
 b=YxAFUTtf1MJ2uuoMkUFhLATyLkMk7fVfap8DQ3KaZM6b5h99gt5c1hy93t6WysRg8e
 F+EYOICx+C4WdyHmpEdE68e9Cmw8T8lhSx+2mQhCFhjC+XGpS+k9IXaDDUSNJTPn2UDc
 jcqWt/S8a8+DtwvzkbDn7fvQrCccvofM2sz7oyZgUBJmNMokp53Re1Ju4z/0IhzlbObV
 DzajflUfIdlrGSulm4Z6naL2DGlAfCSw7zH4MfmGZUGXIq33KGsvDc/MOoOm6EzesmOB
 IzOikhqMtUiM7AeN0xRxkBaEv+H4CsYd2LqmSb2SE6EKY9HMwniL4ex/P3sh+EXijUsB
 QDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=koj8vQ6Vwow9WHURvVfbih/j+pCJk0OPr/7+C3C/8lI=;
 b=JI7mwVFdAjpmgBtXM1P//F2cRxNvOOeDuNX+Jqfb4tmxZioKA8nk37TcJIxUiKZFxz
 CijF4TbH5YrwkTCxaoYSQLY0Ed9eDf5G0A2nos8vLOiLOvnzT+mO33vMX4VCP5PGNQsz
 5cetERas80qNv/m+3q8C8nhCLAKeTHAClXsWt401RVanLf7nsasINxgkY2Pw4e/zsWje
 1/eOWC9S0rfAQF3FBYEVhvVmgJUaYB/UqEuedNfc8q6wK0sXJPxxNhUzYvG1aQGqNwrk
 ygqhb5NAST/AnL+z8gzWukSmaIKOvNoMc9Iuf5wcnUhZVSl+Fq8My42sKu6WPJt6f6EB
 Uu4Q==
X-Gm-Message-State: AOAM532S5sAwxYR6aUOTP2sQ/1hhLZUCxrEAoOEyFF2+joGoDes++OE4
 alcEZ24naf+0u2IpmV6hgm5TFEbb0qo=
X-Google-Smtp-Source: ABdhPJwjgSr1mkEJ5H6lqeFBUOWNLIq2X8mVH6Q9nmivd+MbwVnnGZut1zCzhG2s3DJRY5XqwylzQQ==
X-Received: by 2002:ac8:6743:: with SMTP id n3mr315320qtp.7.1595437646385;
 Wed, 22 Jul 2020 10:07:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 205sm352849qkn.104.2020.07.22.10.07.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:07:25 -0700 (PDT)
Message-ID: <5F18724D.30309@gmail.com>
Date: Wed, 22 Jul 2020 13:07:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANzM3hwYu3EB-r1ykowjinZEJ7C=91eGZWcJBKB8ZdoQ-0yFEw@mail.gmail.com>
In-Reply-To: <CANzM3hwYu3EB-r1ykowjinZEJ7C=91eGZWcJBKB8ZdoQ-0yFEw@mail.gmail.com>
Subject: Re: [USRP-users] Different gain traces at RX interfaces
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
Content-Type: multipart/mixed; boundary="===============7364293407073215850=="
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
--===============7364293407073215850==
Content-Type: multipart/alternative;
 boundary="------------040801080805060607080109"

This is a multi-part message in MIME format.
--------------040801080805060607080109
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/22/2020 04:37 AM, Arash Jafari via USRP-users wrote:
> Hello All,
>
> My instrument (USRP X310) has 2 equivalent UBX-160 daughter boards.
>
>
> *|   |   |       RX Dboard: A
> |   |   |   ID: UBX-160 v2 (0x007e)
> |   |   |   Serial: 31D5AC*
> *
> *
> * RX Dboard: B
> |   |   |   ID: UBX-160 v2 (0x007e)
> |   |   |   Serial: 31D5B02*
> *
> *
> I applied an equivalent external stimulus at both RX interfaces.
> but the same stimulus signal at RX1 and RX2 interfaces  results in an 
> 18 dB difference in relative gain trace!!!!!!
> In attachment please find the relative gain trace.
> Does anybody know what is wrong with the board?
> Thank you in advance!
> *
> *
> *
> *
> -- 
> Dipl.-Ing. Arash Jafari
>
> Phone: +43 650 844 3617
> E-mail: arash.jafari.telecom@gmail.com 
> <mailto:arash.jafari.telecom@gmail.com>
>
How are these interfaces being driven?  Hard-wired?  Antenna?   What is 
the magnitude of the stimulus signal?

Are you sure you are plugged in to the right connectors on the front 
panel?   Is the gain being set to the same thing on both interfaces?



--------------040801080805060607080109
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/22/2020 04:37 AM, Arash Jafari
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANzM3hwYu3EB-r1ykowjinZEJ7C=91eGZWcJBKB8ZdoQ-0yFEw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hello All,</div>
        <div><br>
        </div>
        My instrument (USRP X310) has 2 equivalent UBX-160 daughter
        boards.
        <div><br>
          <div><br>
            <div><b>|   |   |       RX Dboard: A<br>
                |   |   |   ID: UBX-160 v2 (0x007e)<br>
                |   |   |   Serial: 31D5AC</b></div>
            <div><b><br clear="all">
              </b>
              <div><b> RX Dboard: B<br>
                  |   |   |   ID: UBX-160 v2 (0x007e)<br>
                  |   |   |   Serial: 31D5B02</b><br>
              </div>
              <div><b><br>
                </b></div>
              <div>
                <div>I applied an equivalent external stimulus at both
                  RX interfaces.</div>
                <div>but the same stimulus signal at RX1 and RX2
                  interfaces  results in an 18 dB difference in relative
                  gain trace!!!!!!</div>
              </div>
              <div>In attachment please find the relative gain trace.</div>
              <div>Does anybody know what is wrong with the board?</div>
              <div>Thank you in advance!</div>
              <div><b><br>
                </b></div>
              <div><b><br>
                </b></div>
              -- <br>
              <div dir="ltr" class="gmail_signature"
                data-smartmail="gmail_signature">
                <div dir="ltr">
                  <div>
                    <div dir="ltr">
                      <div dir="ltr">
                        <div dir="ltr"><span
                            style="color:rgb(0,0,0);font-family:monospace,monospace">Dipl.-Ing.
                            Arash Jafari</span><font color="#000000"
                            face="monospace, monospace" size="2"> </font>
                          <div><br>
                          </div>
                          <font color="#000000" size="2"><span
                              style="font-family:monospace">Phone: +43
                              650 844 3617</span><br
                              style="font-family:monospace" clear="none">
                          </font>
                          <div><span style="font-family:monospace"><font
                                color="#000000" size="2">E-mail: <a
                                  moz-do-not-send="true"
                                  href="mailto:arash.jafari.telecom@gmail.com"
                                  target="_blank">arash.jafari.telecom@gmail.com</a></font></span></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    How are these interfaces being driven?  Hard-wired?  Antenna?   What
    is the magnitude of the stimulus signal?<br>
    <br>
    Are you sure you are plugged in to the right connectors on the front
    panel?   Is the gain being set to the same thing on both interfaces?<br>
    <br>
    <br>
  </body>
</html>

--------------040801080805060607080109--


--===============7364293407073215850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7364293407073215850==--

