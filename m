Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D80D181D15
	for <lists+usrp-users@lfdr.de>; Wed, 11 Mar 2020 17:01:27 +0100 (CET)
Received: from [::1] (port=42958 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jC3nS-0004Nn-K3; Wed, 11 Mar 2020 12:01:26 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:35231)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jC3mJ-0000Mw-Gn
 for usrp-users@lists.ettus.com; Wed, 11 Mar 2020 12:00:15 -0400
Received: by mail-oi1-f182.google.com with SMTP id k8so940067oik.2
 for <usrp-users@lists.ettus.com>; Wed, 11 Mar 2020 08:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=TiCbIBnNgTMtrKgE2H4lAlKAfwb7cKHwzA5169uHGi4=;
 b=dMFEob8Fx7DCoAJ4LvFMbfqFd5MaXfHSpWFdUhCSTCEAPtWTplinychnmXDRUe2hpp
 PrtxAvXZlo5HRi9yn95NBmrYq9GYxVxYsyThC3iwLlxSpwdva3QiGO42LoJVExXJBJwe
 j543GOzz9Y2YXjVuhPzFKxs4IX4bQ12aUFABbxUQbjrTiovR8svUf15egQ3FSH5M0HJW
 ACAOqBHaa8VU28NclXFFtA9dWAue/VYP+3Oniej6DDRL32fdOdyw1Q9Jpyu3WcnW3Lwq
 UDZLJVQHtVyk21XTRTzQ/rFz1XqVqg9fUBkB9bWDJGmQjHU2UgxXqS5t23fUzd13uRYI
 P62Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TiCbIBnNgTMtrKgE2H4lAlKAfwb7cKHwzA5169uHGi4=;
 b=NkeTTwG5UzrRkZmXFQDnmZ3AEDmNRQJ7j4Fy9M0pckihRNBevtK1KR3MUtaa4YrRoP
 V+6CeoQEULtALmEbQCrKtGyZ3C5Y7BtjLnwR0145HoHQUn3bP8XJQM2aoh6nDMIgikAB
 c+x6BZdcwiBomydYMvOmbeglIV0iZB+nwm3VoUPUrGULh7a7Qx2E4gOHZEMULRYIUD61
 wGnCiPM7tGoiaqeyOeCbxZxaXcL3I2+cmuZjst8tmd2ClGjMDTkERwdOFnkh7SERaXPi
 gHacDzkvy7g1o7uueMhuRFs4h8TjR0Pa2CJP5vhfivEiCcZ0JAssJWBmJ4UiW+MxceSJ
 d+fQ==
X-Gm-Message-State: ANhLgQ3/ssYmkNgRScQngHPCWPLFnz/eYXHQTOf9wktRJwGniPavV+33
 ERfgdcrIVltgamZdFG8ZNoXlCnvrnzKaNUfLSpcALHaSyrA=
X-Google-Smtp-Source: ADFU+vtA4+LnEGft41ERbs2AUqyE4jInP0jWtJBAAdtXT73+SVt6G330b+mCqGkcrL7AH4pSj2lQKxufgXYoQduMhKA=
X-Received: by 2002:a05:6808:4e:: with SMTP id
 v14mr2478798oic.70.1583942372235; 
 Wed, 11 Mar 2020 08:59:32 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 11 Mar 2020 11:59:17 -0400
Message-ID: <CAB__hTT2e2ApKaiaLG3RXC-n9FD_-A=zO59v4TbwBD_s4uscLA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] axi_rate_change.v: user IP latency limit?
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0263486334030244248=="
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

--===============0263486334030244248==
Content-Type: multipart/alternative; boundary="0000000000007156b405a0965222"

--0000000000007156b405a0965222
Content-Type: text/plain; charset="UTF-8"

Hi,
I am using axi_rate_change with my custom noc block and seeing the
following error show up at the end-of-burst (i.e., everything seems to work
fine until I issue the stop streaming command).  As a result, subsequent
bursts do not behave since things are left in a bad state.

*[ERROR] [RX FLOW CTRL] *Error unpacking packet: ValueError: Bad CHDR
or packet fragment*[ERROR] [STREAMER] *The receive packet handler
caught a value exception.

My noc graph is the following:
  Radio => DDC => Myblock => host

One thing of note about my MyBlock is that it has long latency as it
contains 4 FFT cores (max 4096, but set to 1024) in series along with some
other stuff.  MyBlock also has capability to bypass the 2nd half of the
block (containing 2 of the 4 FFTs). When I exercise this bypass switch, the
frequency of this error drops drastically (although not entirely) from near
100% to perhaps 10%.

So, my question is: is there any issue with long latency in user IP when
using "axi_rate_change" (and if so, is there a way to fix it?)?

I reviewed "axi_rate_change" since the error indicates a bad CHDR (which my
IP does not touch since it is handled in axi_rate_change). A few remarks:

   - In the comments at the top, there is a note that says "User code with
   long pipelines may need to increase HEADER_FIFOSIZE", but this appears to
   me to be a "stale" comment that was applicable to an old version of this
   block.  Perhaps there previously was a FIFO for the header, but I think
   the block was re-architected to eliminate the need for this FIFO.
   - After reviewing the current code in the block, I can't see any problem
   with user IP having long latency.  For very long latency on the order of
   perhaps 80ms, it seems that the error/warning signals would be corrupted
   because of a throttle counter overflow, but I can't see how this would
   impact the streaming operation

Any help would be greatly appreciated.  Thanks.
Rob

--0000000000007156b405a0965222
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am using axi_rate_change with my custom noc bloc=
k and seeing the following error show up at the end-of-burst (i.e., everyth=
ing seems to work fine until I issue the stop streaming command).=C2=A0 As =
a result, subsequent bursts do not behave since things are left in a bad st=
ate.</div><div><pre><font color=3D"#EF2929"><b>[ERROR] [RX FLOW CTRL] </b><=
/font>Error unpacking packet: ValueError: Bad CHDR or packet fragment
<font color=3D"#EF2929"><b>[ERROR] [STREAMER] </b></font>The receive packet=
 handler caught a value exception.
</pre></div><div>My noc graph is the following:</div><div>=C2=A0 Radio =3D&=
gt; DDC =3D&gt; Myblock =3D&gt; host</div><div><br></div><div>One thing of =
note about my MyBlock is that it has long latency as it contains 4 FFT core=
s (max 4096, but set to 1024) in series along with some other stuff.=C2=A0 =
MyBlock also has capability to bypass the 2nd half of the block (containing=
 2 of the 4 FFTs). When I exercise this bypass switch, the frequency of thi=
s error drops drastically (although not entirely) from near 100% to perhaps=
 10%.</div><div><br></div><div><div>So, my question is: is there any issue =
with long latency in user IP when using &quot;axi_rate_change&quot; (and if=
 so, is there a way to fix it?)?</div><div><br></div><div>I reviewed &quot;=
axi_rate_change&quot; since the error indicates a bad CHDR (which my IP doe=
s not touch since it is handled in axi_rate_change).=C2=A0A few remarks:</d=
iv><div></div></div><div><ul><li> In the comments at the top, there is a no=
te that says &quot;User code with long pipelines may need to increase HEADE=
R_FIFOSIZE&quot;, but this appears to me to be a &quot;stale&quot; comment =
that was applicable to an old version of this block.=C2=A0 Perhaps there pr=
eviously was a=C2=A0FIFO for the header, but I think the=C2=A0block was re-=
architected to eliminate the need for this FIFO.</li><li>After reviewing th=
e current code in the block, I can&#39;t see any problem with user IP havin=
g long latency.=C2=A0 For very long latency on the order of perhaps 80ms, i=
t seems that the error/warning signals would be corrupted because of a thro=
ttle counter overflow, but I can&#39;t see how this would impact the stream=
ing operation</li></ul><div>Any help would be greatly appreciated.=C2=A0 Th=
anks.</div><div>Rob</div></div><div><br></div><div><br></div><div><br></div=
></div>

--0000000000007156b405a0965222--


--===============0263486334030244248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0263486334030244248==--

