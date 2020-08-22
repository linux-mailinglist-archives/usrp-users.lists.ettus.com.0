Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB30424E69C
	for <lists+usrp-users@lfdr.de>; Sat, 22 Aug 2020 11:12:00 +0200 (CEST)
Received: from [::1] (port=60420 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9PZ8-0006bi-8Z; Sat, 22 Aug 2020 05:11:58 -0400
Received: from resqmta-po-12v.sys.comcast.net ([96.114.154.171]:37975)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1k9PZ4-0006TY-D4
 for usrp-users@lists.ettus.com; Sat, 22 Aug 2020 05:11:54 -0400
Received: from resomta-po-14v.sys.comcast.net ([96.114.154.238])
 by resqmta-po-12v.sys.comcast.net with ESMTP
 id 9PXYkkDYqYKFp9PYPkWPC5; Sat, 22 Aug 2020 09:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1598087473;
 bh=vt+Bh5Ez4ZxsGddH5Oig2mcIrIFcVrjQqc50FvI9cAc=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=GiYufnZmo64q5zu/IE+8cJ1VbyjeGnKUAkxCqCwBK9Y/OncYimhyAOuar3jeJT+9W
 bDDDeHteE8Bv7EB3zgCOAcboRfp+G0Ad1h8D9CLR7ZB0fk0xW6vw6+3+FmFK57XlQ+
 hx3D5I8xVUXyccduOItk13/6EUozTsl3TEjikzRGShhW2eFj8S1vkiRnPe2RyUvsaT
 UulTlKAiYBAg2UjTr2OBM1TxqdFKH+GV8L9C9FJ95rq9jsEUQNT91FZHSEnEOeXxRj
 X5KGzVNiti1YG2W+ue2fKHCHii3ZIW/3I35b3OAKjA+iDNMvc1A5iPLJg0T06QW0Ff
 uS4yZ5sEuUwCQ==
Received: from [IPv6:2601:647:4200:ea30:5911:4f18:938b:c0b6]
 ([IPv6:2601:647:4200:ea30:5911:4f18:938b:c0b6])
 by resomta-po-14v.sys.comcast.net with ESMTPSA
 id 9PYOkCkaiZziU9PYOkGjEN; Sat, 22 Aug 2020 09:11:13 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CAMVZM+9wHRAeTFc+H84XqGqanVfYFr0nEZDY=rm7-s6B9omDLA@mail.gmail.com>
Message-ID: <4679cc66-5de2-1cbc-358d-7255729ab011@comcast.net>
Date: Sat, 22 Aug 2020 02:11:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMVZM+9wHRAeTFc+H84XqGqanVfYFr0nEZDY=rm7-s6B9omDLA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Antenna suggestion for usrp B210, LTE band 7
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============3181455810759437221=="
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
--===============3181455810759437221==
Content-Type: multipart/alternative;
 boundary="------------483A8DDC576DFC187F3B0A3C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------483A8DDC576DFC187F3B0A3C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

The RFSpace TSA600 works well at 2.6 GHz.

http://rfspace.com/RFSPACE/Antennas_files/TSA600.pdf

https://antennatestlab.com/wp-content/uploads/2017/02/EX03A_RFSpace-TSA600_Excel-Summary.xlsx

Ron

On 8/22/20 01:58, Pavlos Basaras via USRP-users wrote:
> Hello,
>
> I hope everyone is well.
>
> I am looking for suggestions for antennas for the usrp B210. I am 
> interested in LTE band 7 at 2.6 (to be used with openairinterface) 
> with sma-male connector.
> I found some relevant ones from several sites, but I am looking for 
> more options. Any suggestions?
>
> all the best,
> Pavlos.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------483A8DDC576DFC187F3B0A3C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>The RFSpace TSA600 works well at 2.6 GHz.</p>
    <p><a class="moz-txt-link-freetext" href="http://rfspace.com/RFSPACE/Antennas_files/TSA600.pdf">http://rfspace.com/RFSPACE/Antennas_files/TSA600.pdf</a></p>
    <p><a class="moz-txt-link-freetext" href="https://antennatestlab.com/wp-content/uploads/2017/02/EX03A_RFSpace-TSA600_Excel-Summary.xlsx">https://antennatestlab.com/wp-content/uploads/2017/02/EX03A_RFSpace-TSA600_Excel-Summary.xlsx</a><br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 8/22/20 01:58, Pavlos Basaras via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMVZM+9wHRAeTFc+H84XqGqanVfYFr0nEZDY=rm7-s6B9omDLA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hello,<br>
        <div><br>
        </div>
        <div>I hope everyone is well.</div>
        <div><br>
        </div>
        <div>I am looking for suggestions for antennas for the usrp
          B210. I am interested in LTE band 7 at 2.6 (to be used with
          openairinterface) with sma-male connector. </div>
        <div>I found some relevant ones from several sites, but I am
          looking for more options. Any suggestions?</div>
        <div><br>
        </div>
        <div>all the best,</div>
        <div>Pavlos.</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------483A8DDC576DFC187F3B0A3C--


--===============3181455810759437221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3181455810759437221==--

