Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D97B5FFE1F
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 06:49:50 +0100 (CET)
Received: from [::1] (port=52070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWZv3-0007da-LC; Mon, 18 Nov 2019 00:49:49 -0500
Received: from mail-qv1-f49.google.com ([209.85.219.49]:38013)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iWZuz-0007WH-Te
 for USRP-users@lists.ettus.com; Mon, 18 Nov 2019 00:49:45 -0500
Received: by mail-qv1-f49.google.com with SMTP id q19so6041865qvs.5
 for <USRP-users@lists.ettus.com>; Sun, 17 Nov 2019 21:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=DE15M73ZDrL3Gx6GEjuXBwBnLj3YPgaoTvy0co1q1pQ=;
 b=avusszsWHVCw6tDTrAJT9xqp2jJiruqgUT2MGkzppTnwwPa/BuT5j3If1oA93eDEwv
 9KUOHbNFK9ldJfAEqRRAXfVd63DX6B6SsgbApx45FtBminUODeEjpWSiAicoq9hHgKy9
 4JMcWInojui/qRbCn8ZQ+LT2zLcRwgYy/uDcibilVSOCRSyi9uE0THK4Uhosu2vkA1h+
 x8nqzeNRVm+vhfsc9DYTGYGDjXu/cYt+Xfa1cnQtrQAVkeFiCvBi9r+PcFCDyiizSsu6
 PKBvE/yJEY8vDVLd7kgm+dCM6aW+kmruNTa3OYHLpaBu2N5RxQrvSNFc+ZWI4MNOBXfX
 5Evg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=DE15M73ZDrL3Gx6GEjuXBwBnLj3YPgaoTvy0co1q1pQ=;
 b=l1O5eq18TmJ1vgSpKuZFlbIk+1WsQzbScXUKJoSueDxSbAlgpq4fPLhw0EoVXy5SLo
 sgJyQ7gIeiqyBu3iUzi3e3lusBceQ7Cw9ZsA7LDiQb6CbkXQWLvYk7lcREN7emvKzsVe
 SvhvZaO3rgBkZknKS0UXdCgejkENEVAGJq/XDmEDmX8SOjzfa9kmLEB5ACzElETC+LZD
 EfGe82uxnJ/HTTdsukr4UNfRlvNzG+1RDMX6S6x+VIDz4pSxjBlzTK2NimYABrzK6IN8
 sscmEz9EfAK9FIlidZo7ECQyToUuP4tZrF7dcZUi1JGbYGEpEEhp5iXLPJd9yWPbM+sb
 /Y9A==
X-Gm-Message-State: APjAAAWw2kCqfjfZwgCwNBdgUHIw9xNoJdZuJwN3UtirEOqrexwy1DyJ
 TARjPBbLGwrDRthEbcC2CW9AMy0d4Rc=
X-Google-Smtp-Source: APXvYqzRQ+C8L5c5phjzCZASGR2tMbUQlwlhyPQ3f44Nyf5xw+zsoRc6GzOBgnm5bkuihEwYXtHHjQ==
X-Received: by 2002:a05:6214:2c6:: with SMTP id
 g6mr25138512qvu.176.1574056145028; 
 Sun, 17 Nov 2019 21:49:05 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id x1sm9462414qtf.81.2019.11.17.21.49.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Nov 2019 21:49:04 -0800 (PST)
Message-ID: <5DD230CF.9090700@gmail.com>
Date: Mon, 18 Nov 2019 00:49:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Robin Coxe <coxe@quanttux.com>
References: <HK0PR03MB5091427A23E5530B6A978CCF9D4D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <7BAFE73A-6429-4070-B312-839D557B6C3B@gmail.com>
 <CAKJyDkJiABmoJDXUHxH0=-=SshPp6SHSSJ31n0boE2TNwtWTZg@mail.gmail.com>
In-Reply-To: <CAKJyDkJiABmoJDXUHxH0=-=SshPp6SHSSJ31n0boE2TNwtWTZg@mail.gmail.com>
Subject: Re: [USRP-users] N310 schematic don't show all part
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0562078341482457296=="
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
--===============0562078341482457296==
Content-Type: multipart/alternative;
 boundary="------------040005040604000800070503"

This is a multi-part message in MIME format.
--------------040005040604000800070503
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/18/2019 12:40 AM, Robin Coxe wrote:
> The N310 motherboard does not have a PCIe interface, proprietary or 
> otherwise.  Schematic p. 20 was a PoE controller on earlier, 
> unreleased versions of the N310, but it was omitted because it could 
> not source enough current to the device when both RF 
> daughtercards were enabled.   The PoE components were not populated on 
> earlier module revisions and have been eliminated entirely from recent 
> revisions of the motherboard PCB.
Ooops, I read that as "X310".  So many part numbers...

I have never been able to get more than 12W from "Classic" POE, and 
that's really not enough for anything as capable as the N310...




>
> Marcus is correct that several pages of the X310 schematic featuring 
> the NI PCIe ASIC were redacted because NI never authorized them for 
> public release.
>
>
>
>
> On Sun, Nov 17, 2019 at 9:28 PM Marcus D Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     That is, AFAIR, the properietary PCIE interface that NI don’t
>     publish schematics for.
>
>     Sent from my iPhone
>
>>     On Nov 18, 2019, at 12:12 AM, Thomas james via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>     ﻿
>>     Hi,
>>     i read N310 mother board schematic find that there should be a
>>     sheet 20 but not in the pdf schematic. what is this part for?
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------040005040604000800070503
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/18/2019 12:40 AM, Robin Coxe
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAKJyDkJiABmoJDXUHxH0=-=SshPp6SHSSJ31n0boE2TNwtWTZg@mail.gmail.com"
      type="cite">
      <div dir="ltr">The N310 motherboard does not have a PCIe
        interface, proprietary or otherwise.  Schematic p. 20 was a PoE
        controller on earlier, unreleased versions of the N310, but it
        was omitted because it could not source enough current to the
        device when both RF daughtercards were enabled.   The PoE
        components were not populated on earlier module revisions and
        have been eliminated entirely from recent revisions of the
        motherboard PCB.</div>
    </blockquote>
    Ooops, I read that as "X310".  So many part numbers...<br>
    <br>
    I have never been able to get more than 12W from "Classic" POE, and
    that's really not enough for anything as capable as the N310...<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAKJyDkJiABmoJDXUHxH0=-=SshPp6SHSSJ31n0boE2TNwtWTZg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><br>
            <div>Marcus is correct that several pages of the X310
              schematic featuring the NI PCIe ASIC were redacted because
              NI never authorized them for public release.</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sun, Nov 17, 2019 at 9:28
          PM Marcus D Leech via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">That is, AFAIR, the properietary PCIE
            interface that NI don’t publish schematics for. <br>
            <br>
            <div dir="ltr">Sent from my iPhone</div>
            <div dir="ltr"><br>
              <blockquote type="cite">On Nov 18, 2019, at 12:12 AM,
                Thomas james via USRP-users &lt;<a
                  moz-do-not-send="true"
                  href="mailto:usrp-users@lists.ettus.com"
                  target="_blank">usrp-users@lists.ettus.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type="cite">
              <div dir="ltr">﻿
                <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Hi,</div>
                <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">i
                  read N310 mother board schematic find that there
                  should be a sheet 20 but not in the pdf schematic.
                  what is this part for?</div>
                <span>_______________________________________________</span><br>
                <span>USRP-users mailing list</span><br>
                <span><a moz-do-not-send="true"
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank">USRP-users@lists.ettus.com</a></span><br>
                <span><a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
              </div>
            </blockquote>
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
    </blockquote>
    <br>
  </body>
</html>

--------------040005040604000800070503--


--===============0562078341482457296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0562078341482457296==--

