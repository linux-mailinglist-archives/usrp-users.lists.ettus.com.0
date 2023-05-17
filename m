Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67452705BF5
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 02:32:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F56D384B8A
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 20:32:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684283529; bh=uRTFeHdoLrxAA/Vx/iEXRI3y5t4aW1R4THEJYXjWOhI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Z1PJ8Do5j0InLCzaK6ymGT61GDJUltSfxQHRLPsZAA+0Y5rF6URxhbOMIS/2O1P0N
	 YZgunM5FSCCGILG90jhjXZRuCIeDhGFFuE5Qm2fYo5liYME6pPsVa8gQYLP8WMuwlQ
	 /yMWpFhXBWapcVwBzFE76fZ3JMuLMBaf/yEawpEnVr9FCiJM7/e7FUGiU/46ghlNob
	 3KOoRNTfnRKBqsC3pQ3DzuJC3j5LpKEWxLYiE+UsH2XWypHYC4XJIC2yeKrVh17eoA
	 wjkazVVl5ouPb6mYGgJUtusjUf1fNCX/TEFu7q73TYaxckqThyhS4vX+k6i9nd0iMz
	 eWZZR36OEwwXQ==
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 08A7E384B70
	for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 20:31:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="aMkwDZoV";
	dkim-atps=neutral
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-24df4ecdb87so183726a91.0
        for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 17:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1684283502; x=1686875502;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j7U3E4aVRMIDBg4FyYNzYK8+zJ/1JgtIRe7QssqfpBQ=;
        b=aMkwDZoVpJAMtzASOcPYZtNDKlnVfh0h6Gzw39tNUk/OpuCvpnWV0lKYT8F5nYTL2L
         2H5N+s0VVZ7TcTK4NedEhB3FHULNasXn5fK32nVuNSiOtXteqYI+sMFaOQvdpoJ08A6E
         Si8kp8bTEi8UgBt3wNMAZVsYgpx1ywMchs71jMWTRL0gLY/VIMVRDuzqPbpgS9gKAAb6
         XjzX+ukuos1COFE9NuKm3vpqZbVnHLu+B5nF+PdqXmKoBDlzLTx5u2wbYtguJfULATqo
         Jsegy8/U8gB67c9eEXosj5T05CzZAdzV8y+vb1QE3uMsIe72eKsevac/bITUjq3Smbtl
         cDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684283502; x=1686875502;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j7U3E4aVRMIDBg4FyYNzYK8+zJ/1JgtIRe7QssqfpBQ=;
        b=hqR2cPfnT7q8E/i/jdIOUfMmVy6OucYuANuRboKBn8KWkn6kqHIUnDaqCys4TeSsFP
         5BrX714wpVCND0SDVfGfU3+Pw0z/M7nP6XkkZQK/yFOrVwP+nLOehrTfCgbJ0xvj0Noz
         ifsIKGgsU19IlJkTuKsAA7+XMTkEFC2SUU/57DtfaHGYbyPJFYDHXMBGjPvwWjPvYXDn
         sVz/EwDW7aTZ1/v9THRByk0T4aEoilxsAHT2jFNdoqbc/6vi6vL1iQo0umINfNJtKO97
         8MpbbSQssII6MkFV+9bxESIDppXlQ2Rc9S4LUol3kEoBOHJn/Gki+FlNb3FjxYHV7I1E
         yptA==
X-Gm-Message-State: AC+VfDxD6mP7GBA655bXOKzU4qXhrZzqG0FdO8/5MZNlVPPxLOqIqQLc
	gEsgxnrxsD+e2L7J9nd5VtaA9+XWJq+Irct8+ESWTZOYL1IQNRt5+aEmcA==
X-Google-Smtp-Source: ACHHUZ6cd9V5PtFmWqb2SYwqjpcwK3RnXyhEJHsS2zt3uBwkkWGD0P26/KbtaWMu8uhBqRyz0zTZv9wJJWFKzeKKShg=
X-Received: by 2002:a17:90a:f48a:b0:253:4af:4458 with SMTP id
 bx10-20020a17090af48a00b0025304af4458mr7931885pjb.9.1684283501576; Tue, 16
 May 2023 17:31:41 -0700 (PDT)
MIME-Version: 1.0
From: Michael Toussaint <mtoussaint@chaosinc.com>
Date: Tue, 16 May 2023 17:31:31 -0700
Message-ID: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: VOA7HP4MFA3B327GD4EDWIODPLDUQXVA
X-Message-ID-Hash: VOA7HP4MFA3B327GD4EDWIODPLDUQXVA
X-MailFrom: mtoussaint@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOA7HP4MFA3B327GD4EDWIODPLDUQXVA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8448490686346566377=="

--===============8448490686346566377==
Content-Type: multipart/alternative; boundary="000000000000d01ca605fbd8cf70"

--000000000000d01ca605fbd8cf70
Content-Type: text/plain; charset="UTF-8"

Hi,

I am testing the LO synching on a single N321 using the 2 Tx channels on
the N321.

I have followed the LO setup steps from the knowledge base,
https://kb.ettus.com/USRP_N320/N321_LO_Distribution, to distribute the LO.
(Sample Python code used for setup below)

I am using separate streamers for each Tx channel and noticing a delay
between the 2 channels executing.

The Tx channels do not appear to be synchronized, we're measuring anywhere
from 0.5ns to 4ns of delay across the channels.

1) Is there a recommended process for synchronizing 2 Tx output channels
and the output LOs on the N321?
    a) Would using a single streamer for both Tx channels reduce the
execution delay?

Thanks,

Michael



""" Sample Python Code Used for LO Setup """

import argparse
import logging
import sys

sys.path.append('/usr/lib/python3/dist-packages/')

import uhd

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-a", "--args", default="name=SDR1", type=str)

    args = parser.parse_args()

    usrp = uhd.usrp.MultiUSRP(args.args)

    usrp.set_tx_lo_source("external", "lo1", 0)
    usrp.set_tx_lo_source("external", "lo1", 1)
    usrp.set_tx_lo_export_enabled(True, "lo1", 0)

    hw_lo_export_path =
'blocks/0/Radio#0/dboard/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_1/export'

    if usrp.get_tree().exists(hw_lo_export_path):
        usrp.get_tree().access_bool(hw_lo_export_path).set(True)


if __name__ == "__main__":
    logging.basicConfig(format='%(asctime)s [%(levelname)s]: %(message)s',
level=logging.DEBUG)
    main()

""" End of Code """

--000000000000d01ca605fbd8cf70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I am testing the LO synching on a single N321 u=
sing the 2 Tx channels on the N321.<br><br>I have followed the LO setup ste=
ps from the knowledge base, <a href=3D"https://kb.ettus.com/USRP_N320/N321_=
LO_Distribution">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>, t=
o distribute the LO. (Sample Python code used for setup below)<br><br>I am =
using separate streamers for each Tx channel and noticing a delay between t=
he 2 channels executing.<br><br>The Tx channels do not appear to be synchro=
nized, we&#39;re measuring anywhere from 0.5ns to 4ns of delay across the c=
hannels.<br><br>1) Is there a recommended process for synchronizing 2 Tx ou=
tput channels and the output LOs on the N321?<br>=C2=A0 =C2=A0 a) Would usi=
ng a single streamer for both Tx channels reduce the execution delay?<br><b=
r>Thanks,<br><br>Michael<br><br><br><br>&quot;&quot;&quot; Sample Python Co=
de Used for LO Setup &quot;&quot;&quot;<br><br>import argparse<br>import lo=
gging<br>import sys<br><br>sys.path.append(&#39;/usr/lib/python3/dist-packa=
ges/&#39;)<br><br>import uhd<br><br>def main():<br>=C2=A0 =C2=A0 parser =3D=
 argparse.ArgumentParser()<br>=C2=A0 =C2=A0 parser.add_argument(&quot;-a&qu=
ot;, &quot;--args&quot;, default=3D&quot;name=3DSDR1&quot;, type=3Dstr)<br>=
<br>=C2=A0 =C2=A0 args =3D parser.parse_args()<br><br>=C2=A0 =C2=A0 usrp =
=3D uhd.usrp.MultiUSRP(args.args)<br><br>=C2=A0 =C2=A0 usrp.set_tx_lo_sourc=
e(&quot;external&quot;, &quot;lo1&quot;, 0)<br>=C2=A0 =C2=A0 usrp.set_tx_lo=
_source(&quot;external&quot;, &quot;lo1&quot;, 1)<br>=C2=A0 =C2=A0 usrp.set=
_tx_lo_export_enabled(True, &quot;lo1&quot;, 0)<br><br>=C2=A0 =C2=A0 hw_lo_=
export_path =3D &#39;blocks/0/Radio#0/dboard/tx_frontends/0/los/lo1/lo_dist=
ribution/LO_OUT_1/export&#39;<br><br>=C2=A0 =C2=A0 if usrp.get_tree().exist=
s(hw_lo_export_path):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp.get_tree().access=
_bool(hw_lo_export_path).set(True)<br><br><br>if __name__ =3D=3D &quot;__ma=
in__&quot;:<br>=C2=A0 =C2=A0 logging.basicConfig(format=3D&#39;%(asctime)s =
[%(levelname)s]: %(message)s&#39;, level=3Dlogging.DEBUG)<br>=C2=A0 =C2=A0 =
main()<br><br>&quot;&quot;&quot; End of Code &quot;&quot;&quot;<br clear=3D=
"all"><div><br></div></div>

--000000000000d01ca605fbd8cf70--

--===============8448490686346566377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8448490686346566377==--
