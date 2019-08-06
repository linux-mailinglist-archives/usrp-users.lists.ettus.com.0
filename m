Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A0483812
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2019 19:40:25 +0200 (CEST)
Received: from [::1] (port=52316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hv3Rf-0004mC-GE; Tue, 06 Aug 2019 13:40:23 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:46676)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1hv3Rb-0004fm-LC
 for usrp-users@lists.ettus.com; Tue, 06 Aug 2019 13:40:19 -0400
Received: by mail-oi1-f176.google.com with SMTP id 65so67783820oid.13
 for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2019 10:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=wORJywJoUcvZ+Q7cOVUNbjwvbfL4nY/hxNFCcXKV7UU=;
 b=OivSZpoi01D8eIhvzwx7ZjHQ9h8LNbd7stV/V+QRlm0GwUnw8vU4DEMKOhnV1LfXfH
 6w4l6mON08b0H2K48lNn1iklbNJ4v/ORUNRFD7PdUVcb6bfUYlOD1B17+edjLJ0CwA/8
 gtk+gGgxNuZ/l/iZTCyq2UbAMnPnmNhatPP68m/u3GPtQjqeloPwPUtDpB4a9t/T1UiH
 MXDUUWVyuBDGfsfxJZCDs3k9wMkrLrWIaF8RSy3TKp7jY0HIxfWbmtx5PZ6+wSkinC4A
 oEm2wbjnoFZKXJyiJU0t+tgfhpoauvGesc4ME7FMW5g6tgG/mg3lxsMz0NTwondMPVXk
 Yn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wORJywJoUcvZ+Q7cOVUNbjwvbfL4nY/hxNFCcXKV7UU=;
 b=skECKMm3sgua8iH3fbqcAHg0erSEuWSZ+03QxvJET7v2RDLHj9yOHBS27xxQA5JRGZ
 wLQFVC8NYi1CwowAlqI5txpzTk/8VPA6PZ7cvG+pedt18CAhoJ9QZy8Ds5HO4LAQMG5z
 +EP6tV78RMxYgL2PW4DHtDOVQWZN4jmmXXE1EvFAZGFtt4J2EQJlRdvrKbQ0YdbWEg0m
 R4gEtpr/+5ASgNCWRBCb+ESKYfqqzvc2Mz34Az6Ia6FYUI+fdieBjNZEfXBHtUQncz6P
 VxH+fe5nQimjwAmE/jL1IxV7rgtGj2HpaOEZLCmYxn77zY3dBRjXSHcROXmDiE0fVVSz
 HVpg==
X-Gm-Message-State: APjAAAVBCcWjh0nM+rWuDWAzMBkvSyodCVHXq9IADcPzCT3bPK5nagwt
 soGZ+AtoYRUDFNZmxV6nGdPmhKwe4ZSa/+5kPWPDJs5RZ20=
X-Google-Smtp-Source: APXvYqyng//FIW+SH4+/Ssx1X3DYRaQXOovKm18OVcr/mpjdZGi9LSpmAO65UH8PrgVGcbs1qiLkfUTPfPd7iN+uE54=
X-Received: by 2002:aca:d552:: with SMTP id m79mr2427622oig.3.1565113178565;
 Tue, 06 Aug 2019 10:39:38 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 6 Aug 2019 13:39:28 -0400
Message-ID: <CAB__hTTXuD3w81XuPr42ym+2VcS+gTM_o-W4YwPebmcCtgjRwQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Missing block controller warning in RFNoC
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============6054119608931911898=="
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

--===============6054119608931911898==
Content-Type: multipart/alternative; boundary="0000000000000aeee0058f764faf"

--0000000000000aeee0058f764faf
Content-Type: text/plain; charset="UTF-8"

In another post, someone was mentioning the warning that is displayed if
there is no block controller for a given rfnoc block.  I would like to
suggest that Ettus consider a different solution than providing this
warning.  Perhaps if the user could identify a block controller in the XML
file (which would default to the block in question, but could be changed to
any valid block controller), then the user could specifically choose the
default controller for blocks that only need noc script (and thus no need
for a warning if it is explicitly chosen). It would also allow the user to
write a block controller that is common to several similar blocks, without
mandating that the blocks have the same name.

Rob

--0000000000000aeee0058f764faf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In another post, someone was mentioning the warning that i=
s displayed if there is no block controller for a given rfnoc block.=C2=A0 =
I would like to suggest that Ettus consider a different solution than provi=
ding this warning.=C2=A0 Perhaps if the user could identify a block control=
ler in the XML file (which would default to the block in question, but coul=
d be changed to any valid block controller), then the user could specifical=
ly choose the default controller for blocks that only need noc script (and =
thus no need for a warning if it is explicitly chosen). It would also allow=
 the user to write a block controller that is common to several similar blo=
cks, without mandating that the blocks have the same name.<br><div><br></di=
v><div>Rob</div></div>

--0000000000000aeee0058f764faf--


--===============6054119608931911898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6054119608931911898==--

